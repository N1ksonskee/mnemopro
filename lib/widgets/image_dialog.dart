import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageDialog extends StatelessWidget {
  const ImageDialog({Key? key, required this.path}) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      behavior: HitTestBehavior.opaque,
      child: Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Hero(tag: path, child: Image.network(path))
      ),
    );
  }
}