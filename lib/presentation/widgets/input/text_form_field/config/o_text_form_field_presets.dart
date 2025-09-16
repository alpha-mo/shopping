import 'package:flutter/material.dart';
import 'package:ojail_shopping/presentation/theme/app_colors.dart';
import './o_text_form_field_config.dart';

class OTextFormFieldPresets {
  static OTextFormFieldConfig normal({
    required BuildContext context,
    required TextEditingController controller,
    required String? Function(String?)? validator,
    required String labelText,
    bool autofocus = false,
  }) {
    return OTextFormFieldConfig(
      controller: controller,
      validator: validator,
      autofocus: autofocus,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }

  static OTextFormFieldConfig counter({
    required BuildContext context,
    required TextEditingController controller,
    required String? Function(String?)? validator,
  }) {
    return OTextFormFieldConfig(
      controller: controller,
      validator: validator,
      enabled: false,
      readOnly: true,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: AppColors.secondaryAccent,
        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: AppColors.blueAccent, width: 2),
        ),
      ),
    );
  }
}
