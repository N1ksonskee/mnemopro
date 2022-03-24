import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/data.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/pracal_locii_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/show_progress_dialog.dart';
import '../../widgets/practical_tile.dart';
import 'exercise_pi_info.dart';

class ExercisePiList extends StatelessWidget {
  const ExercisePiList({
    Key? key, required this.title,}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {

    String pi = '141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067982148086513282306647093844609550582231725359408128481117450284102701938521105559644622948954930381964428810975665933446128475648233786783165271201909145648566923460348610454326648213393607260249141273724587006606315588174881520920962829254091715364367892590360011330530548820466521384146951941511609433057270365759591953092186117381932611793105118548074462379962749567351885752724891227938183011949129833673362440656643086021394946395224737190702179860943702770539217176293176752384674818467669405132000568127145263560827785771342757789609173637178721468440901224953430146549585371050792279689258923542019956112129021960864034418159813629774771309960518707211349999998372978049951059731732816096318595024459455346908302642522308253344685035261931188171010003137838752886587533208381420617177669147303598253490428755468731159562863882353787593751957781857780532171226806613001927876611195909216420198938';

    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(title, style: Get.textTheme.headline1!.copyWith(fontSize: 20)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            PracticalTile(
              handler: () => Get.to(ExercisePiInfo(title: title,), transition: Transition.rightToLeft),
              title: 'info'.tr,
              iconData: Icons.info
            ),
            Center(child: Container(height: 50, width: 1, color: Colors.black)),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, i) {
                  RxBool isEnable = false.obs;
                  isEnable.value = GetStorage().read('pi-${i + 1}');
                  GetStorage().listenKey('pi-${i + 1}', (_) {
                    isEnable.value = true;
                  });

                  return Obx(() =>
                    _buildExerciseElement(
                      title: PiNumber.titles[i],
                      index: i,
                      isBlocked: !isEnable.value
                    ),
                  );
                },
                separatorBuilder: (_, i) => Center(child: Container(height: 50, width: 1, color: Colors.black)),
                itemCount: PiNumber.titles.length
            ),
            const SizedBox(height: 50,),
            PracticalTile(
              handler: () {
                final pairsController = Get.put(PairsController(), permanent: true);
                pairsController.clear();
                pairsController.title = title;
                pairsController.isChainPractical = true;
                pairsController.isLociiPractical = true;
                pairsController.isNumbersExercise = true;
                pairsController.isPiExercise = true;
                pairsController.isCheckExercise = true;
                pairsController.isLastSet = true;
                pairsController.enableStatistics = false;

                for(int i = 0; i < PiNumber.pi90List.length; i++) {
                  pairsController.chains.add(PiNumber.pi90List[i].getRange(0, 10).toList());
                  pairsController.chains.add(PiNumber.pi90List[i].getRange(10, 20).toList());
                  if(i + 1 == PiNumber.pi90List.length) {
                    pairsController.chains.add(PiNumber.pi90List[i].getRange(20, 34).toList());
                  } else {
                    pairsController.chains.add(PiNumber.pi90List[i].getRange(20, 30).toList());
                  }

                  pairsController.chain.addAll(PiNumber.pi90List[i]);

                }

                pairsController.nextPageCheck = const PracticalPairsCheck();
                pairsController.nextPageResult = const PracticalLociiResult();

                Get.to(const PracticalPairsCheck(), transition: Transition.rightToLeft);
              },
              title: 'check'.tr ,
              iconData: Icons.fact_check
            )
          ],
        ),
      ),
    );
  }




  Widget _buildExerciseElement({
    required String title,
    required index,
    isBlocked = false,
  }) => Stack(
    alignment: Alignment.center,
    clipBehavior: Clip.none,
    children: [
      GestureDetector(
        onTap: isBlocked ? () => showProgressDialog(index) : () {
          final pairsController = Get.put(PairsController(), permanent: true);
          pairsController.clear();
          pairsController.title = title;
          pairsController.isChainPractical = true;
          pairsController.isLociiPractical = true;
          pairsController.maxSecondsStart = 30;
          pairsController.maxArrayInterval = 4;
          pairsController.isNumbersExercise = true;
          pairsController.isPiExercise = true;
          pairsController.practicalKey = 'pi-${index + 1}';
          if(index == 10) {
            pairsController.enableStatistics = GetStorage().read('pi-done') ? false : true;
          } else {
            pairsController.enableStatistics = GetStorage().read('pi-${index + 2}') ? false : true;
          }

          pairsController.chains.add(PiNumber.pi90List[index].getRange(0, 10).toList());
          pairsController.chains.add(PiNumber.pi90List[index].getRange(10, 20).toList());
          pairsController.chainsToFix.add(ChainToFix(chain: PiNumber.pi90List[index].getRange(0, 10).toList()));
          pairsController.chainsToFix.add(ChainToFix(chain: PiNumber.pi90List[index].getRange(10, 20).toList()));

          if(index + 1 == PiNumber.pi90List.length) {
            pairsController.chains.add(PiNumber.pi90List[index].getRange(20, 34).toList());
            pairsController.chainsToFix.add(ChainToFix(chain: PiNumber.pi90List[index].getRange(20, 34).toList()));
          } else {
            pairsController.chains.add(PiNumber.pi90List[index].getRange(20, 30).toList());
            pairsController.chainsToFix.add(ChainToFix(chain: PiNumber.pi90List[index].getRange(20, 30).toList()));
          }


          for(int i = 0; i < PiNumber.pi90List[index].length; i++) {
            pairsController.chain.add(PiNumber.pi90List[index][i]);
          }

          pairsController.nextPageStart = const PracticalPairsStart();
          pairsController.nextPageCheck = const PracticalPairsCheck();
          pairsController.nextPageResult = const PracticalLociiResult();

          Get.to(const PracticalPairsStart(), transition: Transition.rightToLeft);

        },
        child: Container(
          width: 200,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          decoration: BoxDecoration(
            color: isBlocked ? const Color(0xffe0e0e0) : Colors.white,
            borderRadius: BorderRadius.circular(20),

          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isBlocked ? const SizedBox(width: 45, height: 45,child: Icon(Icons.lock, color: Colors.black, size: 30,)) : Text(
                '${index + 1}',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: kblue),
              ),
              Text(
                title,
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          width: 10,
          height: 10,
        ),
        top: -5,
        left: 0,
        right: 0,
      ),
      index == 10 ? Container() : Positioned(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          width: 10,
          height: 10,
        ),
        bottom: -5,
        left: 0,
        right: 0,
      ),
    ],
  );
}


