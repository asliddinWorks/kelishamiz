
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class DropDownWithTitle extends StatelessWidget {
  const DropDownWithTitle({super.key,
    required this.title,
    this.titleStyle,
    this.padding = EdgeInsets.zero,
    this.contentPadding,
    this.spaceBetweenTitleAndButton = 5,
    required this.onChanged,
    this.onTap,
    required this.dropdownValue,
    this.borderRadius,
    required this.items,
    this.icon,
  });

  final String title;
  final TextStyle? titleStyle;
  final EdgeInsets padding;
  final EdgeInsets? contentPadding;
  final double spaceBetweenTitleAndButton;
  final void Function(dynamic value) onChanged;
  final Function()? onTap;
  final Object dropdownValue;
  final BorderRadius? borderRadius;
  final List items;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {

    Object value = dropdownValue;
    if (!items.contains(dropdownValue)) {
      value = items.first;
    }

    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: titleStyle ?? context.textStyle.productTitle,),
          SizedBox(height: spaceBetweenTitleAndButton),

          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(5),
              color: context.color.backgroundColor,
              border: Border.all(
                color: context.color.grey.withOpacity(.2),
              ),
            ),
            child: DropdownButton(
              onChanged: onChanged,
              onTap: onTap,
              value: value,
              isExpanded: true,
              underline: const SizedBox.shrink(),
              borderRadius: borderRadius ?? BorderRadius.circular(5),
              padding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 5),
              icon: icon,
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
