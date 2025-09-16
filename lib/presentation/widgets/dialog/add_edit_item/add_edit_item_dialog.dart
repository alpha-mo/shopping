import 'package:ojail_shopping/presentation/widgets/input/text_form_field/config/o_text_form_field_presets.dart';
import 'package:ojail_shopping/presentation/widgets/buttons/button.dart';
import '../../input/text_form_field/config/o_text_form_field_config.dart';
import '../../input/text_form_field/o_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../input/text_form_field/counter_form_field.dart';

class AddEditItemDialog extends StatefulWidget {
  const AddEditItemDialog({
    super.key,
    required this.itemNameController,
    required this.qtyController,
    this.isEditing = false,
  });
  final TextEditingController itemNameController;
  final TextEditingController qtyController;
  final bool isEditing;

  @override
  State<AddEditItemDialog> createState() => _AddEditItemDialogState();
}

class _AddEditItemDialogState extends State<AddEditItemDialog> {
  final _formKey = GlobalKey<FormState>();
  void cancel() {
    Navigator.of(context).pop();
    _formKey.currentState?.reset();
  }

  void submit() {
    if (_formKey.currentState!.validate()) {
      final title = widget.itemNameController.text;
      final amount = double.parse(widget.qtyController.text);

      Navigator.of(context).pop();

      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(content: Text("Saved: $title - $amount")),
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    final OTextFormFieldConfig itemNameFieldConfig =
        OTextFormFieldPresets.normal(
          context: context,
          autofocus: true,
          controller: widget.itemNameController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "felaktig namn";
            }
            return null;
          },
          labelText: "namn",
        );

    return AlertDialog(
      constraints: BoxConstraints(minWidth: 350),
      title: Text("${widget.isEditing ? "Redigera" : "Lägg till"} vara"),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            OTextFormField(config: itemNameFieldConfig),
            CounterFormField(controller: widget.qtyController),
          ],
        ),
      ),
      actions: [
        OButton(
          'avbryt',
          onPressed: cancel,
          type: ButtonType.blue,
          outlined: true,
        ),
        OButton(
          widget.isEditing ? "spara" : "ok",
          onPressed: submit,
          type: ButtonType.success,
        ),
      ],
    );
  }
}
