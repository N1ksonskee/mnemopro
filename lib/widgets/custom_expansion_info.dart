import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../controllers/expansion_tile_controller.dart';
import 'expansion_tile_state.dart';

class CustomExpansionInfo extends StatelessWidget {
  const CustomExpansionInfo({
    Key? key,
    required this.title,
    required this.contentText,
    required this.expansionTileIndex,
    required this.leading,
    required this.onCheckHandler,
    required this.onLearnHandler,
  }) : super(key: key);

  final String title;
  final String contentText;
  final int expansionTileIndex;
  final Widget leading;
  final VoidCallback onCheckHandler;
  final VoidCallback onLearnHandler;

  @override
  Widget build(BuildContext context) {
    final ExpansionTileController expansionTileController = Get.find();

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        for(int i = 0; i < expansionTileController.isExpandedList.length; i++) {
          if(i == expansionTileIndex) continue;

          if(expansionTileController.isExpandedList[i].isExpanded) {
            expansionTileController.changeExpand(i, false);

            expansionTileController.isExpandedList[i]
                .globalKey.currentState!.collapse();
          }
        }

        expansionTileController.toggleExpand(expansionTileIndex);
        expansionTileController.isExpandedList[expansionTileIndex]
            .globalKey.currentState!.toggle();
      },
      child: Theme(
        data: Get.theme.copyWith(
            dividerColor: Colors.transparent
        ),
        child: Obx( () =>
            IgnorePointer(
              ignoring: expansionTileController.isExpandedList[expansionTileIndex].isExpanded ? false : true,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: CustomExpansionTile(
                      key: expansionTileController.isExpandedList[expansionTileIndex].globalKey,
                      tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      collapsedBackgroundColor: Colors.white,
                      backgroundColor: Colors.white,
                      childrenPadding: const EdgeInsets.all(16),
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      iconColor: Colors.black,
                      collapsedIconColor: Colors.black,
                      title: Text(
                        title,
                        style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                      ),
                      leading: SizedBox(
                        width: 30,
                        height: 30,
                        child: leading,
                      ),
                      children: [
                        Text(
                          contentText,
                          style: Get.textTheme.bodyText1,
                        ),
                        sizedBoxLow(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150,
                              child: CustomButtonMin(
                                title: 'check'.tr,
                                color: kblue,
                                handler: onCheckHandler,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: CustomButtonMin(
                                title: 'learn'.tr,
                                color: kblue,
                                handler: onLearnHandler,
                              ),
                            ),
                          ],
                        )
                      ]
                  )),
            ),
        ),
      ),
    );
  }
}

class CustomButtonMin extends StatelessWidget {
  const CustomButtonMin({
    Key? key,
    required this.title,
    required this.color,
    required this.handler,
  }) : super(key: key);

  final String title;
  final Color color;
  final VoidCallback handler;

  @override
  Widget build(BuildContext context) => ElevatedButton(
    onPressed: handler,
    child: Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    style: ElevatedButton.styleFrom(
      primary: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      shadowColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 8),

    ),
  );
}