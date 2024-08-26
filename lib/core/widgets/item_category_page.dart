
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class ItemCategoryPage extends StatelessWidget {
  const ItemCategoryPage({super.key, required this.icon, required this.title, required this.isActive, required this.onTap});

  final String icon;
  final String title;
  final bool isActive;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
          // () {
        // context.push(
        //   RouteNames.category,
        //   extra: 1,
        // );
      // },
      child: AspectRatio(
        aspectRatio: 1/1,
        child: Container(
          decoration: BoxDecoration(
            color: context.color.backgroundColor,
            boxShadow: [
              BoxShadow(
                color: context.color.categoryItem,
                blurRadius: 3,
                spreadRadius: 0,
                offset: const Offset(0, 2)
              )
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: isActive ? context.colorScheme.primary : context.color.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: context.color.lightGrey,
                        offset: const Offset(0, 1),
                        spreadRadius: 0,
                          blurRadius: 3
                        ),
                      ]
                    ),
                    width: 65,
                    height: 65,
                    child: SvgPicture.asset(icon, color: isActive ? context.colorScheme.onPrimary : context.colorScheme.secondary ),
                  ),
                  Text(title, style: context.textTheme.bodyMedium!.copyWith(height:1.1 ), textAlign: TextAlign.center,),
                ],
              ),
              if (isActive)
              Container(
                height: 2,
                color: context.colorScheme.secondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
