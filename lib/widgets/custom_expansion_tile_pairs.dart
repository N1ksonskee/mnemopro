import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/expansion_tile_controller.dart';
import 'expansion_tile_state.dart';

class CustomExpansionTilePairs extends StatelessWidget {
  const CustomExpansionTilePairs({
    Key? key,
    required this.widgets,
    required this.title,
    required this.color,
    required this.leading,
    required this.expansionTileIndex
  }) : super(key: key);

  final List<Widget> widgets;
  final String title;
  final Color color;
  final Widget leading;
  final int expansionTileIndex;

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
            child: IgnorePointer(
              ignoring: expansionTileController.isExpandedList[expansionTileIndex].isExpanded ? false : true,
              child: CustomExpansionTile(
                key: expansionTileController.isExpandedList[expansionTileIndex].globalKey,
                leading: leading,
                collapsedIconColor: Colors.black,
                iconColor: Colors.black,
                tilePadding: const EdgeInsets.all(16),
                childrenPadding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 0),
                collapsedBackgroundColor: color.withOpacity(0.2),
                backgroundColor: color.withOpacity(0.1),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                title: Text(title, style: Get.textTheme.headline2!.copyWith(fontSize: 24),),
                children: widgets,
            )),
          ),
        ),
      ),
    );
  }
}