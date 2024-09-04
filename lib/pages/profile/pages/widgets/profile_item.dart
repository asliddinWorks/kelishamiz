
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

import '../../../../router/router.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key, required this.icon, required this.title, required this.index, required this.color});

  final Widget icon;
  final String title;
  final Color color;
  final int index;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        context.push(
          RouteNames.message,
          // extra: index,
        );
      },
      child: SizedBox(
        height: 120,
        width: 90,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(50),
              ),
              width: 73,
              height: 73,
              child: icon,
            ),
            Text(title, style: context.textStyle.categoryCaptionSmall!.copyWith(height: 1.1), textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}
