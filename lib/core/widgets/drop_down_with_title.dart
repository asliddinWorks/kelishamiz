
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class DropDownWithTitle extends StatelessWidget {
  const DropDownWithTitle({super.key,
    required this.title,
    this.titleStyle,
    this.spaceBetweenTitleAndButton = 5,
    required this.onChanged,
    required this.dropdownValue,
    this.borderRadius,
    required this.items,

  });

  final String title;
  final TextStyle? titleStyle;
  final double spaceBetweenTitleAndButton;
  final void Function(String? value) onChanged;
  final String dropdownValue;
  final BorderRadius? borderRadius;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: titleStyle ?? context.textStyle.productTitle,),
          SizedBox(height: spaceBetweenTitleAndButton),

          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: borderRadius ?? BorderRadius.circular(5),
                border: Border.all(
                  color: context.color.grey.withOpacity(.5),
                )
            ),
            child: DropdownButton<String>(
              onChanged: onChanged,
              value: dropdownValue,
              isExpanded: true,
              underline: const SizedBox.shrink(),
              borderRadius: borderRadius ?? BorderRadius.circular(5),
              items: items.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e),
                );
              },).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
