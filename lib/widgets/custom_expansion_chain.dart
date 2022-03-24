import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/expansion_tile_controller.dart';
import 'expansion_tile_state.dart';

class CustomExpansionChain extends StatelessWidget {
  const CustomExpansionChain({
    Key? key,
    required this.widgets,
    required this.title,
    required this.subtitle,
    required this.subtitleColor,
    required this.expansionTileIndex,
    this.isPracticalResult = true,
  }) : super(key: key);

  final List<Widget> widgets;
  final String title;
  final String subtitle;
  final Color subtitleColor;
  final int expansionTileIndex;
  final bool isPracticalResult;

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
        child: Obx(() =>
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: AbsorbPointer(
              absorbing: expansionTileController.isExpandedList[expansionTileIndex].isExpanded ? false : true,
              child: CustomExpansionTile(
                onExpansionChanged: (isExpanded) {
                  expansionTileController.isExpandedList[expansionTileIndex].isExpanded = !isExpanded;
                   expansionTileController.toggleExpand(expansionTileIndex);
                },
                key: expansionTileController.isExpandedList[expansionTileIndex].globalKey ,
                subtitle: expansionTileController.isExpandedList[expansionTileIndex].isExpanded ? Container() : Text(subtitle, style: TextStyle(color: subtitleColor, fontSize: 18, fontWeight: FontWeight.normal),),
                tilePadding: const EdgeInsets.all(8).copyWith(left: 32),
                collapsedBackgroundColor: kgreyDark,
                backgroundColor: Colors.white,
                childrenPadding: const EdgeInsets.only(bottom: 16),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                iconColor: Colors.black,
                collapsedIconColor: Colors.white,
                title: Text(
                  title,
                  style: Get.textTheme.headline2!.copyWith(color: expansionTileController.isExpandedList[expansionTileIndex].isExpanded ? Colors.black : Colors.white),
                ),
                children: widgets
            )),
          ),
        ),
      ),
    );
  }
}