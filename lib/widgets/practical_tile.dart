import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';

class PracticalTile extends StatelessWidget {
  const PracticalTile({
    Key? key,
    required this.handler,
    required this.title,
    this.iconData,
    this.svgIconPath = ''
  }) : super(key: key);

  final VoidCallback handler;
  final String title;
  final String svgIconPath;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) => ListTile(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
    title: Text(title, style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),),
    onTap: handler,
    tileColor: Colors.white,
    leading: svgIconPath.isEmpty
      ? SizedBox(width: 45, height: 45,child: Icon(iconData, color: kblue, size: 40,))
      : SvgPicture.asset(svgIconPath, height: 45, width: 45,),
  );
}
