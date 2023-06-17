
import 'package:flutter/material.dart';

Widget FormTextField({ required String text, TextEditingController? controller, TextInputType? inputType, bool enabled = true,int? minLines, int?  maxLines,   void Function (String?)? onSaved,
String Function (String?)? validator,}) {
  return

    TextFormField(
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: Color(0xff767676)),

          focusedBorder: InputBorder.none
      ),

      enabled: enabled,
      minLines: minLines,
      maxLines: maxLines,
      onSaved: onSaved,
      validator: validator,
    );

}

Widget FormpasswordField({ required String text, TextEditingController? controller, TextInputType? inputType, bool enabled = true,int? minLines, int?  maxLines,   void Function (String?)? onSaved,
String Function (String?)? validator, required bool isPasswordVisible, bool hideVisibility = false, required VoidCallback onPressed}) {
  return TextFormField(
      obscureText: isPasswordVisible,
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
          hintText: text,
          focusedBorder: InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey),
      //     suffix: hideVisibility? null : IconButton(splashColor: Colors.transparent, highlightColor: Colors.transparent,
      //     onPressed: onPressed,
      //      icon: Icon(isPasswordVisible? Icons.visibility_outlined : Icons.visibility_off_outlined, color: Colors.grey, )
      // )
      ),
      enabled: enabled,
      onSaved: onSaved,
      validator: validator,
  );

}