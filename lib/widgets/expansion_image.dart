import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpansionImage extends StatefulWidget {
  const ExpansionImage({
    Key? key,
    required this.path,
    this.isSvg = false,
    this.isNetwork = false,
    this.scale = 2
  }) : super(key: key);

  final String path;
  final bool isSvg;
  final bool isNetwork;
  final double scale;

  @override
  _ExpansionImageState createState() => _ExpansionImageState();
}

class _ExpansionImageState extends State<ExpansionImage> with TickerProviderStateMixin {
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
      child: widget.isSvg
          ? SvgPicture.asset(widget.path, height: 300,)
          : widget.isNetwork
            ? Image.network(widget.path)
            : Image.asset(widget.path),

    ),
  );
}
