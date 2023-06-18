import 'package:blood4all/Screens/utils/constants.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.text,
    required this.onTap,
    this.child,
    this.bgColor =  const Color(0xffEF4923),
    this.textColor = Colors.white,
  })  : assert(text == null || child == null),
        super(key: key);

  final String? text;
  final VoidCallback onTap;
  final Widget? child;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: child == null
            ? Center(
                child: Text(
                  text!,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              )
            : child!,
      ),
    );
  }
}
