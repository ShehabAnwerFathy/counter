import 'package:counter/controller/constants/colors.dart';
import 'package:flutter/material.dart';

class GradientFloatingActionButton extends StatelessWidget {
  final Widget? child;
  final String heroTag;
  final VoidCallback onPressed;

  const GradientFloatingActionButton({
    this.child,
    required this.heroTag,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      onPressed: onPressed,
      child: Container(
        width: 60,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: AppColors.gradientColorsList),
        ),
        child: child,
      ),
    );
  }
}
