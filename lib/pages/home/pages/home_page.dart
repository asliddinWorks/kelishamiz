
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kelishamiz/constants/app_icons.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('asdasd',
          style: context.textTheme.bodyLarge,
        ),
      ),
      body: Center(
        child: Column(
          children: [

            SvgPicture.asset(
              AppIcons.icCar,
            ),
            Text('asdas', style: context.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w500
            ),),
          ],
        ),
      ),
    );
  }
}
