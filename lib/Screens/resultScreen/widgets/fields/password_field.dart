// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomPasswordField extends StatelessWidget {
  const CustomPasswordField({
    Key? key,
    required this.isPasswordVisible,
    this.confirmation = false,
    this.hideVisibility = false,
    required this.onTap,
    this.validator,
    this.onSaved,
    this.controller,
  }) : super(key: key);

  final bool isPasswordVisible;
  final bool confirmation;
  final bool hideVisibility;
  final VoidCallback onTap;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      child: TextFormField(
        controller: controller,
        obscureText: isPasswordVisible,
        validator: validator,
        onSaved: onSaved,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          suffixIcon: hideVisibility
              ? null
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: onTap,
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
          hintText: !confirmation ? 'Mot de passe' : 'Confirmez le mot de passe',
        ),
      ),
    );
  }
}
