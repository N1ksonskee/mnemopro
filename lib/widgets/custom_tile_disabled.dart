import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/utils/showPremDialog.dart';

class CustomTileDisabled extends StatelessWidget {
  const CustomTileDisabled({
    Key? key,
    required this.title,
    this.dialogWidgetText,
    this.isShowPremDialog = false,
  }) : super(key: key);

  final String title;
  final bool isShowPremDialog;
  final List<TextSpan>? dialogWidgetText;

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
        color: const Color(0xffe0e0e0),
        borderRadius: BorderRadius.circular(18)
    ),
    child: ListTile(
      onTap: isShowPremDialog ? showPremDialog : () async => await Get.dialog(
        Dialog(
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff1B1B1B),
                borderRadius: BorderRadius.circular(18),
              ),
              padding: const EdgeInsets.all(20),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                      children: dialogWidgetText
                  )
              ),
            )
        )
      ),
      title: Text(
        title,
        style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold, color: kgreyDark),
      ),
      leading: const SizedBox(
        width: 30,
        height: 30,
        child: Icon(
          Icons.lock,
          color: Colors.black,
          size: 30,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
    ),
  );
}