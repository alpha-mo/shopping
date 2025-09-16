import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';

final Map<String, List<Color>> _colorLists = {
  'primary': [AppColors.primaryAccent, AppColors.primaryColor],
  'success': [AppColors.successAccent, AppColors.successColor],
  'highlight': [AppColors.highlightAccent, AppColors.highlightColor],
  'blue': [AppColors.blueAccent, AppColors.blueColor],
};

List<Color> btnBgGradient({String type = 'primary'}) {
  return _colorLists[type] ?? _colorLists['primary']!;
}

BoxDecoration boxDecoration(bool isOutlined, String type) {
  final gradient = btnBgGradient(type: type);
  if (isOutlined) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      border: Border.all(
        color: gradient.first,
        width: 2,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
    );
  } else {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: gradient,
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(4),
    );
  }
}
