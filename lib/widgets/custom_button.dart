import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.color,
    required this.handler,
    this.isEnable = true,
    this.isLoading = false
  }) : super(key: key);

  final String title;
  final Color color;
  final VoidCallback handler;
  final bool isEnable;
  final bool isLoading;

  @override
  Widget build(BuildContext context) => ElevatedButton(
    onPressed: isEnable ? handler : null,

    child: isLoading ? const SizedBox(height: 26,width: 26, child: CircularProgressIndicator(color: Colors.white)) : Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 8),
        minimumSize: const Size(double.infinity, 30)
    ),
  );
}
