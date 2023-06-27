import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator(
      {super.key, required this.currentIndex, required this.position});

  final int currentIndex;
  final int position;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        height: 6,
        width: currentIndex == position ? 16 : 6,
        decoration: BoxDecoration(
            color: currentIndex == position
                ? const Color(0xffFF1616)
                : Colors.grey,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
