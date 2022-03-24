import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/widgets/shouldWarningDialog.dart';



class CloseIconButton extends StatelessWidget {
  const CloseIconButton({
    Key? key,
    this.isLec = false,
  }) : super(key: key);

  final bool isLec;

  @override
  Widget build(BuildContext context) => IconButton(
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    icon: const Icon(Icons.close, color: Colors.white, size: 30),
    onPressed: ()  async {
      if(isLec) {
        Get.back();
      } else {
        bool? shouldClose = await showWarningDialog();
        if(shouldClose!) {
          Get.back();
        }
      }
    },
  );
}
