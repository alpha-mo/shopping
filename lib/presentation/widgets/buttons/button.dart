import 'package:flutter/material.dart';
import 'package:ojail_shopping/presentation/widgets/text.dart';
import 'animated_body.dart';
import 'config.dart';

enum ButtonType { primary, success, highlight, blue }

class OButton extends StatelessWidget {
  const OButton(
    this.text, {
    super.key,
    required this.onPressed,
    this.type = ButtonType.primary,
    this.outlined = false,
  });

  final String text;
  final Function()? onPressed;
  final ButtonType type;
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    return AnimatedBody(
      onPressed: onPressed!,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: outlined ? 3.2 : 5,
        ),
        decoration: boxDecoration(outlined, type.name),
        child: OText(
          text,
          type: TextType.title,
          darkText:
              ((type == ButtonType.highlight || type == ButtonType.blue) &&
              !outlined),
          selectable: false,
        ),
      ),
    );
  }
}
