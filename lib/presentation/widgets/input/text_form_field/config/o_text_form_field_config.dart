import 'package:flutter/material.dart';

class OTextFormFieldConfig {
  final bool enabled;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool readOnly;
  final TextAlign textAlign;
  final TextStyle? style;
  final String? labelText;
  final InputDecoration decoration;
  final TextEditingController controller;
  final bool autofocus;

  OTextFormFieldConfig({
    this.textAlign = TextAlign.start,
    this.keyboardType = TextInputType.text,
    this.enabled = true,
    this.readOnly = false,
    this.style,
    this.labelText,
    this.autofocus = false,
    required this.controller,
    required this.validator,
    required this.decoration,
  });
}
