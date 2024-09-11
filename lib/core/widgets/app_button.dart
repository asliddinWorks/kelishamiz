import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.height, this.width, required this.onPressed, required this.text,
    this.appButtonType = AppButtonType.filled,
    this.textColor, this.fillTextStyle, this.outlinedTextStyle,
  });

  final double? height;
  final double? width;
  final void Function()? onPressed;
  final String text;
  final AppButtonType appButtonType;
  final Color? textColor;
  final TextStyle? fillTextStyle;
  final TextStyle? outlinedTextStyle;

  @override
  Widget build(BuildContext context) {
    return AppButtonType.filled == appButtonType ?
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
      child: Text(
        text,
        style: fillTextStyle ?? context.textStyle.buttonMediumActive,
      ),
    ) :
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
        style: outlinedTextStyle ?? context.textStyle.buttonMediumNotActive.copyWith(
          color: textColor ?? context.color.black,
        ),
      ),
    );
  }
}

enum AppButtonType { filled, outlined }
