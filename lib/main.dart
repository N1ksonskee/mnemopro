import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'constants/colors.dart';
import 'controllers/internet_controller.dart';
import 'controllers/pairs_controller.dart';
import 'messages.dart';
import 'pages/course_page.dart';
import 'pages/exercise_page.dart';
import 'pages/practical_page.dart';
import 'pages/splash_page.dart';
import 'pages/user_page.dart';

class NetworkBinding extends Bindings{

  @override
  void dependencies() {
    Get.put<GetXNetworkManager>(GetXNetworkManager(), permanent: true);
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  // await MobileAds.instance.initialize();

  await Firebase.initializeApp();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(GetMaterialApp(
    translations: Messages(),
    locale: Get.deviceLocale,
    fallbackLocale: const Locale('en', 'UK'),
    theme: Themes.light,
    darkTheme: Themes.dark,
    themeMode: ThemeMode.light,
    initialBinding: NetworkBinding() ,
    home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(), // only when sign in/out
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.active) {
            if(snapshot.hasData) {
              return const HomePage();
            } else if(snapshot.hasError) {
              Center(
                child: Column(
                  children: [
                    Text(
                      'error'.tr,
                      style: Get.textTheme.headline2!.copyWith(color: kred),
                    ),
                    sizedBoxLow(),
                    Text(
                      '$snapshot.error',
                      style: Get.textTheme.bodyText1,
                    )
                  ],
                ),
              );
            }

          } else if(snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator(),);
          }

          return const SplashPage();
        },
      )
  ));
}



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final pages = [
    CoursePage(result: Get.arguments),
    const PracticalPage(),
    const ExercisePage(),
    const UserPage()
  ];



  @override
  Widget build(BuildContext context) {
    Get.put(PairsController(), permanent: true);
    final networkManager = Get.find<GetXNetworkManager>();

    return GetBuilder<GetXNetworkManager>(
      builder: (_) => networkManager.connectionType == 0 ? Scaffold(
        body:  Center(child: Text('no_internet_connection'.tr, style: Get.textTheme.headline2!.copyWith(color: kred),)),
      ) : Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) => setState(() {
            selectedIndex = index;
          }),
          items: [
            BottomNavigationBarItem(
              icon: selectedIndex == 0
                  ? SvgPicture.asset('assets/home_filled.svg')
                  : SvgPicture.asset('assets/home_outlined.svg'),
              label: 'home'
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 1
                ? SvgPicture.asset('assets/book_filled.svg')
                : SvgPicture.asset('assets/book_outlined.svg'),
              label: 'practical'
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 2
                ? SvgPicture.asset('assets/pushups_filled.svg')
                : SvgPicture.asset('assets/pushups_outlined.svg'),
              label: 'exercise'
            ),
            BottomNavigationBarItem(
                icon: selectedIndex == 3
                    ? SvgPicture.asset('assets/face_filled.svg')
                    : SvgPicture.asset('assets/face_outlined.svg'),
                label: 'user'
            ),
          ]
        ),
      ),
  ),
    );
  }

}



