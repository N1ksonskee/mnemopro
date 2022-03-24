import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';

class ExerciseFaceStart extends StatelessWidget {
  const ExerciseFaceStart({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    String url = 'https://thispersondoesnotexist.com/image';
    Widget?  _pic = Image.network(url);
    final isUpdatingImage = false.obs;

    _updateImgWidget() async {
      isUpdatingImage.value = true;
      Uint8List bytes = (await NetworkAssetBundle(Uri.parse(url)).load(url)).buffer.asUint8List();
      _pic = Image.memory(bytes);
      isUpdatingImage.value = false;
    }



    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text('face_generator'.tr, style: Get.textTheme.headline1, maxLines: 2,),
        leading: const CloseIconButton(isLec: true,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateImgWidget,
        child: const Icon(Icons.sync_sharp, size: 40,),
        backgroundColor: kblue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Obx(() => isUpdatingImage.value ? const CircularProgressIndicator(color: kblue ,) : ExpansionFaceImage(image: _pic!)),
      )
    );
  }
}


class ExpansionFaceImage extends StatefulWidget {
  const ExpansionFaceImage({
    Key? key,
    required this.image,
    this.scale = 1.7
  }) : super(key: key);

  final double scale;
  final Widget image;

  @override
  _ExpansionFaceImageState createState() => _ExpansionFaceImageState();
}

class _ExpansionFaceImageState extends State<ExpansionFaceImage> with TickerProviderStateMixin {
  late TransformationController controller;
  TapDownDetails? tapDownDetails;
  late AnimationController animationController;
  Animation<Matrix4>? animation;

  @override
  void initState() {
    controller = TransformationController();
    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 300))
      ..addListener(() {
        controller.value = animation!.value;
      });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTapDown: (details) => tapDownDetails = details,
    onTap: () {
      final position = tapDownDetails!.localPosition;

      final x = -position.dx * (widget.scale - 1);
      final y = -position.dy * (widget.scale - 1);

      final zoomed = Matrix4.identity()
        ..translate(x,y)
        ..scale(widget.scale);


      final end = controller.value.isIdentity() ? zoomed : Matrix4.identity();

      animation = Matrix4Tween(
          begin: controller.value,
          end: end
      ).animate(

          CurveTween(curve: Curves.easeOut).animate(animationController)
      );

      animationController.forward(from: 0);

    },
    child: InteractiveViewer(
      transformationController: controller,
      clipBehavior: Clip.none,
      panEnabled: true,
      scaleEnabled: true,
      maxScale: widget.scale,
      child: widget.image
    ),
  );
}




