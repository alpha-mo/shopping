import 'package:flutter/material.dart';
import 'package:ojail_shopping/presentation/theme/app_colors.dart';

class CounterBtn extends StatelessWidget {
  const CounterBtn({
    super.key,
    required this.onPressed,
    this.isIncrement = true,
  });
  final Function() onPressed;
  final bool isIncrement;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isIncrement ? Icons.add_box : Icons.indeterminate_check_box_rounded,
        color: AppColors.textColor,
      ),
      onPressed: onPressed,
    );
  }
}
