
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kelishamiz/constants/app_colors.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({super.key, required this.icon, required this.title});

  final Widget icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        height: 120,
        width: 90,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(color: context.color.lightGrey,
                  spreadRadius: 3,
                    blurRadius: 3
                  ),
                ]
              ),
              width: 90,
              height: 90,
              child: icon,
            ),
            Text(title, style: context.textTheme.labelMedium,),
          ],
        ),
      ),
    );
  }
}
