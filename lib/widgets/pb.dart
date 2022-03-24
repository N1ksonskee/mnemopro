import 'package:flutter/material.dart';

class PB extends StatelessWidget {
  const PB({
    Key? key,
    required this.value,
  }) : super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) => SizedBox(
      width: 60,
      height: 60,
      child: CircularProgressIndicator(
        strokeWidth: 4,
        value: value, // seconds / maxSeconds
        color: const Color(0xFF0D6AB7),
        backgroundColor: const Color(0xFF0D6AB7).withOpacity(0.2),
      )
  );
}