import 'package:flutter/material.dart';
import 'package:kelishamiz/constants/app_colors.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.height, this.width, required this.onPressed, required this.text, required this.active, this.textColor});

  final double? height;
  final double? width;
  final void Function()? onPressed;
  final String text;
  final bool active;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return active
        ?
    MaterialButton(
      onPressed: onPressed,
      highlightElevation: 0,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      color: context.colorScheme.primary,
      minWidth: width,
      height: height,
      disabledColor: context.color.grey,
      disabledTextColor: Colors.black,
      child: Text(text, style: context.textStyle.buttonMediumActive,),
    )
        :
    MaterialButton(
      onPressed: onPressed,
      highlightElevation: 0,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(
          width: 1,
          color: context.color.buttonBorder,
        ),
      ),
      minWidth: width,
      height: height,
      color: context.color.backgroundColor,
      child: Text(
        text,
        style: context.textStyle.buttonMediumNotActive.copyWith(
          color: textColor ?? context.color.black,
        ),
      ),
    );
  }
}

