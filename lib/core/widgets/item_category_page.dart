
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class ItemCategoryPage extends StatelessWidget {
  const ItemCategoryPage({super.key, required this.icon, required this.title, this.isActive});

  final Widget icon;
  final String title;
  final bool? isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.push(
        //   RouteNames.category,
        //   extra: 1,
        // );
      },
      child: Container(
        decoration: BoxDecoration(
          color: context.color.white,
          boxShadow: [
            BoxShadow(
              color: context.color.categoryItem,
              blurRadius: 3,
              spreadRadius: 0,
              offset: const Offset(0, 2)
            )
          ]
        ),
        height: 103,
        width: 103,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: context.color.white,
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
              child: icon,
            ),
            Text(title, style: context.textTheme.bodyMedium!.copyWith(height:1.1 ), textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}
