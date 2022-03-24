import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:practical_mnemonic/constants/colors.dart';

class CustomCheckForm extends StatelessWidget {
  const CustomCheckForm({
    Key? key,
    required this.formKey,
    required this.maskFormatter,
    required this.focusNode,
    required this.textEditingController,
    required this.hintText,
    required this.textInputType
  }) : super(key: key);

  final MaskTextInputFormatter maskFormatter;
  final FocusNode focusNode;
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType textInputType;
  final GlobalKey formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        inputFormatters: [maskFormatter],
        style: const TextStyle(fontSize: 18),
        cursorColor: kblue,
        enableSuggestions: false,
        focusNode: focusNode,
        onFieldSubmitted: (_) => focusNode.unfocus(),
        validator: (text) => text!.isEmpty ? 'empty_field'.tr : null,
        controller: textEditingController,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
          filled: true,
          fillColor: Colors.white,
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5)),
          errorStyle: const TextStyle(fontSize: 16, color: kred),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45),
              borderSide: const BorderSide(style: BorderStyle.none, width: 0)
          ),

          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45),
              borderSide: const BorderSide(style: BorderStyle.none, width: 0)
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45),
              borderSide: const BorderSide(style: BorderStyle.none, width: 0)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45),
              borderSide: const BorderSide(style: BorderStyle.none, width: 0)
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45),
              borderSide: const BorderSide(style: BorderStyle.none, width: 0)
          ),
        ),
        keyboardType: textInputType,
        textInputAction: TextInputAction.next,
      ),
    );
  }
}
