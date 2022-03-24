import 'package:flutter/material.dart';

// class DashedLinePainter extends CustomPainter {
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     double dashWidth = 2, dashSpace = 2, startX = 0;
//     final paint = Paint()
//       ..color = Colors.black
//       ..strokeWidth = 1;
//     while (startX < size.width) {
//       canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
//       startX += dashWidth + dashSpace;
//     }
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }

class DashedLinePainter extends CustomPainter {
  DashedLinePainter({this.isVertical = false});

  bool isVertical;

  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 2, dashSpace = 2, startX = 0, startY = 0;
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;

    if(isVertical) {
      while (startY < size.height) {
        canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
        startY += dashWidth + dashSpace;
      }
    } else {
      while (startX < size.width) {
        canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
        startX += dashWidth + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}