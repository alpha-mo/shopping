import 'package:flutter/material.dart';
import './config/o_text_form_field_config.dart';

class OTextFormField extends StatelessWidget {
  final OTextFormFieldConfig config;

  const OTextFormField({super.key, required this.config});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: config.controller,
      keyboardType: config.keyboardType,
      readOnly: config.readOnly,
      enabled: config.enabled,
      validator: config.validator,
      textAlign: config.textAlign,
      style: config.style,
      autofocus: config.autofocus,
      decoration: config.decoration,
    );
  }
}
