import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Social extends StatelessWidget {
  String image;
  Social({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.amber.shade600, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset(image, width: 10, height: 10),
      ),
    );
  }
}
