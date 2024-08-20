
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kelishamiz/constants/app_colors.dart';

class RectangleIconButton extends StatelessWidget {
  const RectangleIconButton({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.iconBackgroundColor,
        border: Border.all(color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(5)),
      height: 36,
      width: 36,
      child: child,
    );
  }
}
