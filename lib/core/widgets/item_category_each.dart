
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';

class ItemCategoryEach extends StatelessWidget {
  const ItemCategoryEach({super.key, required this.icon, required this.title,});

  final Widget icon;
  final String title;

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
        padding: const EdgeInsets.symmetric(vertical: 10),
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
        width: 102,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: context.color.categoryItem,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(color: context.color.lightGrey,
                  offset: const Offset(0, 1),
                  spreadRadius: 0,
                    blurRadius: 3
                  ),
                ]
              ),
              width: 88,
              height: 64,
              child: icon,
            ),
            5.hGap,
            // Text(title, style: context.textTheme.bodyMedium!.copyWith(height:1.1 ), textAlign: TextAlign.center,),
            Text(title, style: context.textStyle.navigationBar, textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}
