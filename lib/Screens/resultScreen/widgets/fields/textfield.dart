import 'package:blood4all/Screens/utils/constants.dart';
import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType inputType;
  final TextInputAction textInputAction;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool enabled;
  final bool readOnly;
  final FocusNode? focusNode;
  final String? initialValue;
  final String? Function(String?)? validator;
  final VoidCallback? onTap;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final void Function()? onEditingComplete;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.inputType = TextInputType.text,
    this.controller,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.focusNode,
    this.enabled = true,
    this.readOnly = false,
    this.validator,
    this.initialValue,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    this.onSaved,
    this.onChanged,
    this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      child: TextFormField(
        controller: controller,
        keyboardType: inputType,
        focusNode: focusNode,
        initialValue: initialValue,
        validator: validator,
        enabled: enabled,
        onTap: onTap,
        readOnly: readOnly,
        onSaved: onSaved,
        minLines: minLines,
        maxLines: maxLines,
        maxLength: maxLength,
        textInputAction: textInputAction,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        decoration: InputDecoration(
          counterText: "",
          hintText: hintText,
          iconColor: kPrimaryColor,
          prefixIconColor: kPrimaryColor,
        ),
      ),
    );
  }
}
