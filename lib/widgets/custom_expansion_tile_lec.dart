import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomExpansionTileLec extends StatefulWidget {
  const CustomExpansionTileLec({
    Key? key,
    required this.widgets,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.subtitleColor,
  }) : super(key: key);

  final List<Widget> widgets;
  final String title;
  final String subtitle;
  final Color color;
  final Color subtitleColor;

  @override
  _CustomExpansionTileLecState createState() => _CustomExpansionTileLecState();
}

class _CustomExpansionTileLecState extends State<CustomExpansionTileLec> {
  UniqueKey? keyTile;
  bool isExpanded = false;

  void expandTile() {
    setState(() {
      isExpanded = true;
      keyTile = UniqueKey();
    });
  }

  void shrinkTile() {
    setState(() {
      isExpanded = false;
      keyTile = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => isExpanded ? shrinkTile() : expandTile(),
    child: _buildExpansionTile(),
  );

  _buildExpansionTile() => Theme(
    data: Get.theme.copyWith(
        dividerColor: Colors.transparent
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: ExpansionTile(
        key: keyTile,
        subtitle: Text(widget.subtitle, style: TextStyle(color: widget.subtitleColor, fontSize: 18, fontWeight: FontWeight.normal),),
        collapsedIconColor: Colors.black,
        iconColor: Colors.black,
        tilePadding: const EdgeInsets.all(16),
        childrenPadding: const EdgeInsets.all(16),
        collapsedBackgroundColor: widget.color.withOpacity(0.05),
        backgroundColor: widget.color.withOpacity(0.05),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        title: Text(widget.title, style: Get.textTheme.headline2,),
        children: widget.widgets,
      ),
    ),
  );
}