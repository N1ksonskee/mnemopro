import 'package:flutter/material.dart';

class CircularNumber extends StatelessWidget {
  const CircularNumber({Key? key, required this.indexColumn}) : super(key: key);

  final int indexColumn;

  @override
  Widget build(BuildContext context) => Container(
    decoration: const BoxDecoration(
      color: Colors.black,
      shape: BoxShape.circle,
    ),
    padding: EdgeInsets.all(indexColumn < 9 ? 20 : 15),
    child: Center(
      child: Column(
        children: [
          Text(
            '${indexColumn + 1}',
            style: TextStyle(
              fontSize: indexColumn < 9 ? 40 : 30,
              color: Colors.white,
              fontWeight: FontWeight.normal
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );


}
