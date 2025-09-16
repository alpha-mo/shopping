import 'package:flutter/material.dart';
import 'package:ojail_shopping/presentation/theme/app_colors.dart';

enum TextType { body, headline, title }

class OText extends StatelessWidget {
  const OText(
    this.text, {
    super.key,
    this.type = TextType.body,
    this.darkText = false,
    this.selectable = true, // New optional parameter for text selection
  });
  final String text;
  final TextType type;
  final bool darkText;
  final bool selectable;

  @override
  Widget build(BuildContext context) {
    final formattedText = type == TextType.headline ? text.toUpperCase() : text;
    final textStyle = _textStyle(type, context, darkText);

    if (selectable) {
      return SelectableText(formattedText, style: textStyle);
    } else {
      return Text(formattedText, style: textStyle);
    }
  }
}

TextStyle _textStyle(TextType type, BuildContext context, bool darkText) {
  TextStyle style;
  switch (type) {
    case TextType.body:
      style = Theme.of(context).textTheme.bodyMedium!;
    case TextType.headline:
      style = Theme.of(context).textTheme.headlineMedium!;
    case TextType.title:
      style = Theme.of(context).textTheme.titleMedium!;
  }
  if (darkText) {
    style = style.copyWith(color: AppColors.secondaryAccent);
  }
  return style;
}
