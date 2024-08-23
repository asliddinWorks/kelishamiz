import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.height, this.width, required this.onPressed, required this.text});

  final double? height;
  final double? width;
  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      color: context.colorScheme.primary,
      minWidth: width,
      height: height,
      child: Text(text, style: context.textStyle.buttonMediumActive,),
    );
  }
}

