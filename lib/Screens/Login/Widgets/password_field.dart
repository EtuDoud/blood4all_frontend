import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPasswordField  extends StatelessWidget {
  const CustomPasswordField ({Key? key, this.controller, this.inputType,required this.placeholder, this.onSaved, this.validator, this.icon = false, required this.onpressed, this.isVisibleIcon = false }) : super(key: key);
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String placeholder;
  final void Function (String?)? onSaved;
  final String Function (String?)? validator;
  final VoidCallback onpressed;
  final bool icon;
  final bool isVisibleIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(hintText: placeholder, border: InputBorder.none, prefixStyle: const TextStyle(color: Color(0x4D596B), fontSize: 14, fontWeight: FontWeight.w400),
          suffixIcon: icon? Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),

              child: IconButton(splashColor: Colors.transparent, highlightColor: Colors.transparent,
            onPressed:onpressed, icon: Icon(isVisibleIcon? Icons.visibility_outlined : Icons.visibility_off_outlined, color: Colors.grey,))) : null ),
      obscureText: isVisibleIcon,
      onSaved: onSaved,
      validator: validator,

    );
  }
}
