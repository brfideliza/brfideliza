import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    super.key,
    required this.controller,
    required this.obscureText,
    this.keyboardType,
    this.validator,
    this.regex,
    this.onSaved,
    required this.textInputAction,
    this.hintText,
    required this.icon,
  });

  final TextEditingController controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final String? Function(String?)? regex;
  final void Function(dynamic)? onSaved;
  final TextInputAction textInputAction;
  final String? hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        validator: regex,
        onSaved: (value) {
          controller.text = value!;
        },
        textInputAction: textInputAction,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
  }
}
