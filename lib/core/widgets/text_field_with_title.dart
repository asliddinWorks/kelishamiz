
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextFieldWithTitle extends StatelessWidget {
  const TextFieldWithTitle({super.key,
    this.controller,
    this.onChanged,
    required this.title,
    this.hintText,
    this.spaceBetweenTitleAndField = 5,
    this.padding = EdgeInsets.zero,
    this.titleStyle,
    this.hintStyle,
    this.minLines,
    this.maxLines = 1,
    this.keyboardType,
    this.mask,

  });

  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String title;
  final String? hintText;
  final double spaceBetweenTitleAndField;
  final EdgeInsets padding;
  final TextStyle? titleStyle;
  final TextStyle? hintStyle;
  final int? minLines;
  final int? maxLines;
  final TextInputType? keyboardType;
  final String? mask;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: titleStyle ?? context.textStyle.productTitle,),
          SizedBox(height: spaceBetweenTitleAndField),
          TextField(
            onChanged: onChanged,
            controller: controller,
            minLines: minLines,
            maxLines: maxLines,
            keyboardType: keyboardType,
            inputFormatters: [
              MaskTextInputFormatter(
                mask: mask,
                filter: { "#": RegExp(r'[0-9]'), "*" : RegExp(r'[a-zA-Z0-9]') },
                // filter: { "#": RegExp(r'[0-9]') },
                // type: MaskAutoCompletionType.lazy,
              ),
            ],
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: hintStyle,
            ),

          ),
        ],
      ),
    );
  }
}
