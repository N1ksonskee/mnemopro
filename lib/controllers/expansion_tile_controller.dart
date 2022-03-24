import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/widgets/expansion_tile_state.dart';

class ExpansionTileController extends GetxController  {
  final isExpandedList = RxList<ExpansionTileElem>([]);
  toggleExpand(int index) {
    isExpandedList[index].isExpanded = !isExpandedList[index].isExpanded;
    isExpandedList.refresh();
  }

  changeExpand(int index,bool isExpand) {
    isExpandedList[index].isExpanded = isExpand;
    isExpandedList.refresh();
  }
}

class ExpansionTileElem {
  GlobalKey<CustomExpansionTileState> globalKey;
  bool isExpanded;
  ExpansionTileElem({required this.globalKey, this.isExpanded = false});
}