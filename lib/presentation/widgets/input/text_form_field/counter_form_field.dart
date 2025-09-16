import 'package:flutter/material.dart';
import 'package:ojail_shopping/presentation/widgets/buttons/counter_btn.dart';
import 'package:ojail_shopping/presentation/widgets/input/text_form_field/config/o_text_form_field_config.dart';
import 'config/o_text_form_field_presets.dart';
import 'o_text_form_field.dart';

class CounterFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? label;
  final int step;

  const CounterFormField({
    super.key,
    required this.controller,
    this.label,
    this.step = 1,
  });

  @override
  State<CounterFormField> createState() => _CounterFormFieldState();
}

class _CounterFormFieldState extends State<CounterFormField> {
  void _increment() {
    final currentValue = int.tryParse(widget.controller.text) ?? 0;
    setState(() {
      widget.controller.text = (currentValue + widget.step).toString();
    });
  }

  void _decrement() {
    final currentValue = int.tryParse(widget.controller.text) ?? 0;
    final newValue = currentValue - widget.step;
    if (newValue >= 0) {
      setState(() {
        widget.controller.text = newValue.toString();
      });
    }
  }

  double _calculateWidth(String text) {
    final digitCount = text.isEmpty ? 2 : text.length;
    const baseWidth = 14.0; // width per digit (small, tight)
    const minWidth = 40.0; // enough for 2 digits + border
    return (digitCount * baseWidth).clamp(minWidth, 120.0);
  }

  @override
  Widget build(BuildContext context) {
    final OTextFormFieldConfig itemQuantityConfig =
        OTextFormFieldPresets.counter(
          context: context,
          controller: widget.controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "> 0";
            }
            if (int.tryParse(value) == null || int.tryParse(value)! <= 0) {
              return "> 0";
            }
            return null;
          },
        );
    return Row(
      children: [
        if (widget.label != null) Expanded(child: Text(widget.label!)),
        CounterBtn(onPressed: _decrement, isIncrement: false),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200), // smooth resize
          width: _calculateWidth(widget.controller.text),
          child: OTextFormField(config: itemQuantityConfig),
        ),
        CounterBtn(onPressed: _increment),
      ],
    );
  }
}
