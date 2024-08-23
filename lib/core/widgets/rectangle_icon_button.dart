
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class RectangleIconButton extends StatelessWidget {
  const RectangleIconButton({super.key, required this.child, required this.onTap});

  final void Function() onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: context.color.iconBackgroundColor,
          border: Border.all(color: context.color.lightGrey),
          borderRadius: BorderRadius.circular(5),
        ),
        height: 36,
        width: 36,
        child: child,
      ),
    );
  }
}
