import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    Key? key,
    required this.title,
    required this.iconPath,
    required this.handler,
    this.isTrailing = false,
    this.doneCount = 0,
    this.maxCount = 0,
    this.isSubtitle = false,
    this.subtitle = '',
    this.leadingSize = 45,
    this.customLeading,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final bool isSubtitle;
  final String iconPath;
  final VoidCallback handler;
  final bool isTrailing;
  final int doneCount;
  final int maxCount;
  final double leadingSize;
  final Widget? customLeading;

  @override
  Widget build(BuildContext context) => ListTile(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
    title: Text(
      title,
      style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
    ),
    onTap: handler,
    tileColor: Colors.white,
    leading: iconPath.isEmpty ? customLeading : SizedBox(width: leadingSize, height: leadingSize,child: SvgPicture.asset(iconPath)),
    trailing: isTrailing ? Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        '$doneCount/$maxCount',
        style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
      ),
    ) : null,
    subtitle: isSubtitle ? Text(
      subtitle,
      style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: kgrey),
    ) : null,
  );
}
