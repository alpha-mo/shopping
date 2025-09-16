import 'package:flutter/material.dart';

class AnimatedBody extends StatefulWidget {
  const AnimatedBody({super.key, required this.child, required this.onPressed});
  final Widget child;
  final Function() onPressed;

  @override
  State<AnimatedBody> createState() => _AnimatedBodyState();
}

class _AnimatedBodyState extends State<AnimatedBody> {
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: AnimatedScale(
        scale: _isPressed ? 0.8 : 1.0,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeIn,
        child: widget.child,
      ),
    );
  }
}
