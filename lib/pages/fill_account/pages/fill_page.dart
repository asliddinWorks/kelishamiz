
import 'package:flutter/material.dart';
import 'package:kelishamiz/constants/app_images.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';

class FillPage extends StatefulWidget {
  const FillPage({super.key});

  @override
  State<FillPage> createState() => _FillPageState();
}

class _FillPageState extends State<FillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hisobni to\'ldirish', style: context.textTheme.titleLarge!.copyWith(fontSize: 22)),
            65.hGap,
            AspectRatio(
              aspectRatio: 1/.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: AspectRatio(
                      aspectRatio: 1/.635,
                      child: Container(
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          border: Border.all(color: context.color.grey.withOpacity(.2)),
                          color: context.color.lightGrey.withOpacity(.5),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Image.asset(AppImages.click),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: AspectRatio(
                      aspectRatio: 1/.635,
                      child: Container(
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          border: Border.all(color: context.color.grey.withOpacity(.2)),
                          color: context.color.lightGrey.withOpacity(.5),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Image.asset(AppImages.payMe),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            80.hGap,
          ],
        ),
      ),
    );
  }
}
