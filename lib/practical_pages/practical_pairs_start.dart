import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/page_index_controller.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/controllers/timer_controller.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_circular_pb.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';
import 'package:practical_mnemonic/widgets/shouldWarningDialog.dart';


class PracticalPairsStart extends StatelessWidget {
  const PracticalPairsStart({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    PageController pageController = PageController();
    final PairsController pairsController = Get.find();

    TimerController timerController = Get.put(TimerController(pairsController.maxSecondsStart));

    if(pairsController.isBigPicturePractical) {
      Get.put(PageControllerIndex());
    }

    List<List<String>> pairs = [];
    List<String> chain = [];

    int globalPairsCount = 0;
    if(!pairsController.isChainPractical) {
      if(pairsController.maxGlobalArrayInterval == 1) {
        globalPairsCount = pairsController.pairs.length;

      } else {
        globalPairsCount = pairsController.pairs.length ~/ (pairsController.maxGlobalArrayInterval - 1);
      }
    }

    if(pairsController.isChainPractical) {
      if(pairsController.isSingleChain) {
        chain.addAll(pairsController.chain);
      } else if(pairsController.mainChain.isNotEmpty) {
        pairsController.arrayInterval == 1
            ? chain.addAll(pairsController.mainChain)
            : chain = pairsController.chain.getRange(
            (pairsController.arrayInterval - 2) * pairsController.countOfOnePass,
            (pairsController.arrayInterval - 1) * pairsController.countOfOnePass
        ).toList();
      } else {
        chain.addAll(pairsController.chains[pairsController.arrayInterval - 1]);
      }
    } else {
      if(pairsController.isLastSetGlobal && pairsController.isLastSet) {
        pairs.addAll(pairsController.pairs);
      } else if(pairsController.globalArrayInterval == 1) {
        if(pairsController.isLastSet) {
          pairs = pairsController.pairs.getRange(0, globalPairsCount).toList();
        } else  {
          pairs = pairsController.pairs.getRange(
            (pairsController.arrayInterval - 1) * pairsController.countOfOnePass,
            pairsController.arrayInterval * pairsController.countOfOnePass - (pairsController.countMinusOfLastPass != 0 && pairsController.arrayInterval == pairsController.maxArrayInterval - 1 ? pairsController.countMinusOfLastPass : 0)
            ).toList();
        }
      } else if(pairsController.globalArrayInterval == 2) {
        if(pairsController.isLastSet) {
          pairs = pairsController.pairs.getRange(globalPairsCount, globalPairsCount * 2).toList();
        } else {
          pairs = pairsController.pairs.getRange(
              (pairsController.arrayInterval - 1) * pairsController.countOfOnePass + globalPairsCount,
              pairsController.arrayInterval * pairsController.countOfOnePass + globalPairsCount
          ).toList();
        }
      } else if(pairsController.globalArrayInterval == 3) {
        if(pairsController.isLastSet) {
          pairs = pairsController.pairs.getRange(globalPairsCount * 2, globalPairsCount * 3).toList();
        } else {
          pairs = pairsController.pairs.getRange(
              (pairsController.arrayInterval - 1) * pairsController.countOfOnePass + (globalPairsCount * 2),
              pairsController.arrayInterval * pairsController.countOfOnePass + (globalPairsCount * 2)
          ).toList();
        }
      }
    }

    bool isSubChain = false;
    int chainsPassedLength = 0;

    if(pairsController.mainChain.isNotEmpty) {
      if(pairsController.arrayInterval > 1 && pairsController.arrayInterval < pairsController.maxArrayInterval) {
        isSubChain = true;
      }
    }

    if(pairsController.paths.isNotEmpty && pairsController.chains.isNotEmpty) {
      for(int i = 0; i < pairsController.arrayInterval - 1; i++) {
        chainsPassedLength += pairsController.chains[i].length;
      }
    }


    int length = pairsController.isChainPractical ? chain.length : pairs.length;


    return WillPopScope(
      onWillPop: () async {
        final shouldClose = await showWarningDialog();
        return shouldClose ?? false;
      },
      child: Scaffold(
        backgroundColor: kblueBG,
        appBar: AppBar(
          backgroundColor: kblue,
          title: Text(pairsController.title, style: Get.textTheme.headline1, maxLines: 2,),
          leading: const CloseIconButton(),
          actions: pairsController.isBigPicturePractical ? [
          Obx(() => Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              '${Get.find<PageControllerIndex>().pageIndex.value + 1}/$length',
              style: Get.textTheme.headline2!.copyWith(color: Colors.white),
            ),
          ))
          ] : null,
        ),
        body: PageView.builder(
          controller: pageController,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: pairsController.isBigPicturePractical ? 0 : 16),
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Column(
                     children: [
                       pairsController.isBigPicturePractical ? Stack(
                         children: [
                           Center(child: SizedBox(height: 400,child: ExpansionImage(path: pairs[index][1], isNetwork: true))),
                           Positioned(
                             top: 20,
                             child: CustomCircularPB(
                               pageController: pageController,
                               maxSeconds: pairsController.maxSecondsStart,
                               index: index,
                               nextPage: pairsController.isInfoPageExist ? pairsController.nextPageInfo! : pairsController.nextPageCheck!,
                               maxLength: length,
                               isSmallSize: pairsController.isSmallSizePB,
                               isTopIndex: true,
                               isNotCheckPractical: pairsController.isNotCheckPractical,
                             ),
                           ),
                         ],
                       ) : pairsController.isSmallPicturePractical ? Column(
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               CustomCircularPB(
                                 pageController: pageController,
                                 maxSeconds: pairsController.maxSecondsStart,
                                 index: index,
                                 nextPage: pairsController.isInfoPageExist ? pairsController.nextPageInfo! : pairsController.nextPageCheck!,
                                 maxLength: length,
                                 isSmallSize: pairsController.isSmallSizePB,
                                 isNotCheckPractical: pairsController.isNotCheckPractical,
                               ),
                               Column(
                                 children: [
                                   SizedBox(
                                     height: 20,
                                     width: 200,
                                     child: ClipRRect(
                                       borderRadius: BorderRadius.circular(50),
                                       child: LinearProgressIndicator(
                                         color: Colors.black,
                                         backgroundColor: kgreyLinearPB,
                                         value: (index + 1) / length,
                                       ),
                                     ),
                                   ),
                                   const SizedBox(height: 8),
                                   Text(
                                     '${index+1}/$length',
                                     style: Get.textTheme.headline2,
                                   ),
                                 ],
                               )
                             ],
                           ),
                           sizedBoxHigh(),
                           pairsController.isChainPractical
                             ? pairsController.isLastSet
                               ? Center(child: SizedBox(height: 300, child: pairsController.isExpandableImage
                                  ? ExpansionImage(path: pairsController.paths[index], isSvg: true,)
                                  : SvgPicture.asset(pairsController.paths[index])))
                               : Center(child: SizedBox(height: 300, child: pairsController.isExpandableImage
                                  ? pairsController.chains.isEmpty
                                      ? ExpansionImage(path: pairsController.paths[index + pairsController.countOfOnePass * (pairsController.arrayInterval - 1)], isSvg: true,)
                                      : ExpansionImage(path: pairsController.paths[index + chainsPassedLength], isSvg: true,)
                               : SvgPicture.asset(pairsController.paths[index + pairsController.countOfOnePass * (pairsController.arrayInterval - 1)])))
                           : Center(child: SizedBox(height: 300, child: pairsController.isExpandableImage ? ExpansionImage(path: pairs[index][1], isSvg: true,) : SvgPicture.asset(pairs[index][1], height: 300,))),
                         ],
                       ) : Column(
                         children: [
                           Container(
                             margin: const EdgeInsets.symmetric(horizontal: 50),
                             height: 20,
                             child: ClipRRect(
                               borderRadius: BorderRadius.circular(50),
                               child: LinearProgressIndicator(
                                 color: Colors.black,
                                 backgroundColor: kgreyLinearPB,
                                 value: (index + 1) / length,
                               ),
                             ),
                           ),
                           const SizedBox(height: 8),
                           Text(
                             '${index+1}/$length',
                             style: Get.textTheme.headline2,
                           ),
                           const SizedBox(height: 25),
                           CustomCircularPB(
                             pageController: pageController,
                             maxSeconds: pairsController.maxSecondsStart,
                             index: index,
                             nextPage: pairsController.isInfoPageExist ? pairsController.nextPageInfo! : pairsController.nextPageCheck!,
                             maxLength: length,
                             isMiddleSize: pairsController.isMiddleSizePB,
                             isSmallSize: pairsController.isSmallSizePB,
                             isNotCheckPractical: pairsController.isNotCheckPractical,
                           ),
                         ],
                       ),
                       const SizedBox(height: 25),
                       isSubChain ? RichText(
                         textAlign: TextAlign.center,
                         text: TextSpan(
                             style: Get.textTheme.bodyText1,
                             children: [
                               TextSpan(text: 'link_view_with'.tr),
                               TextSpan(text: '${index + 1} ', style: const TextStyle(fontWeight: FontWeight.bold)),
                               TextSpan(text: 'subobject'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                             ]
                         ),
                       ) : Container(),
                       pairsController.arrayInterval == 1 && pairsController.mainChain.isNotEmpty ? Text(
                         'create_chain'.tr,
                         style: Get.textTheme.bodyText1,
                       ) : Container(),
                       isSubChain ? const SizedBox(height: 25) : Container(),
                       pairsController.arrayInterval == 1 && pairsController.mainChain.isNotEmpty ? const SizedBox(height: 25,) : Container(),
                       Text(
                         pairsController.isBigPicturePractical || pairsController.isSmallPicturePractical
                           ? pairsController.isChainPractical ? chain[index] : pairs[index][0]
                           : pairsController.isChainPractical ? chain[index] : '${pairs[index][0]} - ${pairs[index][1]}',
                         style: Get.textTheme.headline2!.copyWith(fontSize: pairsController.isSmallTitle ? 24 : 28),
                         textAlign: TextAlign.center,
                       ),
                       pairsController.isForeignWordsPractical ? const SizedBox(height: 16,) : Container(),
                       pairsController.isForeignWordsPractical ? Text(
                         pairsController.transcriptionsList[index + pairsController.countOfOnePass * (pairsController.arrayInterval - 1)],
                         style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
                       ) : Container(),
                       const SizedBox(height: 25),
                       index < pairsController.descriptionList.length
                       && pairsController.arrayInterval <= pairsController.maxDescriptionArrayInterval
                       && pairsController.mainChain.isEmpty ? Text(
                         pairsController.descriptionList[index + pairsController.countOfOnePass * (pairsController.arrayInterval - 1)],
                         style: Get.textTheme.bodyText1,
                         textAlign: TextAlign.center,
                       ) : Container(),

                       pairsController.isCodesExist ? Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(25),
                             color: Colors.white,
                           ),
                           padding: const EdgeInsets.all(16),
                           child: ListView.builder(
                             shrinkWrap: true,
                             itemBuilder: (context, j) => Text(
                               pairsController.codesList[pairsController.arrayInterval - 1][index][j],
                               style: const TextStyle(
                                 color: kblue,
                                 fontSize: 18,
                                 fontWeight: FontWeight.normal,
                                 height: 2,
                               ),

                             ),
                             itemCount: pairsController.codesList[pairsController.arrayInterval - 1][index].length,
                           ),
                       ) : Container()
                     ],
                   ),
                    CustomButton(
                        title: index + 1 == length
                          ? pairsController.isNotCheckPractical ? 'finish'.tr : 'continue'.tr
                          : 'next'.tr,
                        color: kblue,
                        handler: () {
                          timerController.seconds.value = pairsController.maxSecondsStart;
                          timerController.timer!.cancel();

                          if(index + 1 == length) {
                            if(pairsController.isBigPicturePractical) {
                              Get.find<PageControllerIndex>().pageIndex.value = 0;
                            }

                            if(pairsController.isNotCheckPractical) {
                              if(pairsController.practicalKey == 'practical3_1') {
                                AuthService().upgradeData('practical3_2');
                              }
                              Get.back();
                            } else {
                              Get.off(pairsController.isInfoPageExist ? pairsController.nextPageInfo! : pairsController.nextPageCheck!, transition: Transition.rightToLeft);
                            }
                          } else {
                            if(pairsController.isBigPicturePractical) {
                              Get.find<PageControllerIndex>().pageIndex.value++;
                            }

                            pageController.nextPage(duration: const Duration(milliseconds: 1), curve: Curves.easeIn);
                          }
                        }
                    )
                  ]
              ),
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: length,
        ),
      ),
    );
  }
}

