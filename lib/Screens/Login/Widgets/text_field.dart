import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField  extends StatelessWidget {
  const CustomTextField ({Key? key, this.controller, this.inputType, required this.placeholder, this.enabled = true, this.minLines, this.maxLines, this.onSaved, this.validator}) : super(key: key);
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String placeholder;
  final bool enabled;
  final int? minLines;
  final int? maxLines;
  final void Function (String?)? onSaved;
  final String Function (String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(hintText: placeholder, border: InputBorder.none, prefixStyle: const TextStyle(color: Color(0x4D596B), fontSize: 14, fontWeight: FontWeight.w400) ),
      enabled: enabled,
      minLines: minLines,
      maxLines: maxLines,
      onSaved: onSaved,
      validator: validator,
    );
  }
}
