import 'package:flutter/material.dart';
import 'package:ojail_shopping/presentation/screens/home.dart';
import 'package:ojail_shopping/presentation/theme/theme.dart';

void main() {
  runApp(
    MaterialApp(
      theme: AppTheme.owenTheme,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}
