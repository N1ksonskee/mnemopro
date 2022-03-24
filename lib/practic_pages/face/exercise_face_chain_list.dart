import 'dart:math';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/face_urls.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practic_pages/face/exercise_face_start.dart';
import 'package:practical_mnemonic/widgets/practical_tile.dart';
import 'exercise_face_info.dart';
import 'face_practical_start.dart';

class ExerciseFaceList extends StatelessWidget {
  const ExerciseFaceList({
    Key? key,
    required this.title,

  }) : super(key: key);

  final String title;


  @override
  Widget build(BuildContext context) {
    final _storage = FirebaseStorage.instance;

    getRef(int index) async => await _storage.ref('faces').child('face$index.jpg').getDownloadURL();

    List<int> indexes = [];
    Random random = Random();
    for (int i = 0; i < 100;) {
      int index = random.nextInt(3000);
      if (indexes.contains(index)) continue;
      indexes.add(index);
      i++;
    }

    indexes.shuffle();

    for (int i = 0; i < 20; i += 2) {
      precacheImage(NetworkImage(FaceUrls.urls[indexes[i]]), context,);
    }

    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(
            title, style: Get.textTheme.headline1!.copyWith(fontSize: 20)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            PracticalTile(
              handler: () => Get.to(ExerciseFaceInfo(title: title,), transition: Transition.rightToLeft),
              title: 'info'.tr,
              iconData: Icons.info
            ),
            sizedBoxHigh(),
            PracticalTile(
              handler: () => Get.off(const ExerciseFaceStart(), transition: Transition.rightToLeft),
              title: 'face_generator'.tr,
              svgIconPath: 'assets/ai_face.svg',
              iconData: Icons.eleven_mp
            ),
            sizedBoxHigh(),
            PracticalTile(
              handler: () async {
                final pairsController = Get.put(PairsController(), permanent: true);
                pairsController.clear();
                pairsController.title = 'face_title'.tr;
                pairsController.isNamePractical = true;
                pairsController.isCheckExercise = true;
                pairsController.enableStatistics = false;

                for (int i = 0; i < 100; i += 2) {
                  pairsController.paths.add(FaceUrls.urls[indexes[i]]);
                  pairsController.liePaths.add(FaceUrls.urls[indexes[i] + 1]);
                }

                // for(int i = 2550; i <= 3000; i++) {
                //   final ref = await getRef(i);
                //    print('pic $i == $ref');
                //  }

                Get.off(const FacePracticalStart(), transition: Transition.rightToLeft);
              },
              title: 'face_text'.tr,
              svgIconPath: 'assets/practical_icon.svg',
              iconData: Icons.eleven_mp
            ),
          ],
        ),
      ),
    );
  }
}




