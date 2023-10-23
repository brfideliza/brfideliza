import 'package:flutter/material.dart';

var kButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(const Color(0xFF6750A4)),
  padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 20)),
  shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
);
