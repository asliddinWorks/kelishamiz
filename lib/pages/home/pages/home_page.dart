
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kelishamiz/constants/app_icons.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/widgets/item_category.dart';
import 'package:kelishamiz/core/widgets/rectangle_icon_button.dart';

import '../../../constants/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            flexibleSpace: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Logo', style: context.textTheme.bodyLarge,),
                        Row(
                          children: [
                            Text('Toshkent', style: context.textTheme.bodyMedium!.copyWith(
                              color: Colors.grey,
                            )),
                            const Icon(Icons.chevron_right, color: Colors.grey)
                          ],
                        )],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [RectangleIconButton(child: SvgPicture.asset(AppIcons.icMenu)),
                        const SizedBox(width: 5),
                        Expanded(
                          child: SizedBox(
                            height: 36,
                            child: TextField(
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500),
                              cursorColor: Colors.black54,
                              textAlignVertical: TextAlignVertical.top,
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: context.color.iconBackgroundColor,
                                  contentPadding: const EdgeInsets.all(5),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                    borderSide:
                                    BorderSide(width: 2, color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    borderSide:
                                    BorderSide(width: 2, color: context.color.lightGrey),
                                  ),
                                  alignLabelWithHint: true,
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                      ))),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        RectangleIconButton(child: SvgPicture.asset(AppIcons.icFilter)),
                        const SizedBox(width: 5),
                        RectangleIconButton(child: SvgPicture.asset(AppIcons.icGrid))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  width: 380,
                  height: 210,
                  decoration: BoxDecoration(
                    color: context.colorScheme.secondary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/images/vacancy.png", fit: BoxFit.cover,),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: context.colorScheme.primary,
                        ),
                        height: 35,
                        width: 140,
                        child: Text("Bo'sh ish o'rni", style: context.textTheme.bodyLarge!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold , fontSize: 14)),
                      ),
                       Text("ro'yxatdan \no'tish !", style: context.textTheme.bodyLarge!.copyWith(
                          color: context.colorScheme.primary, fontWeight: FontWeight.bold , fontSize: 14)),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            Text('Kategoriyalar', style: context.textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            SizedBox(
              height: 130,
              width: MediaQuery.sizeOf(context).width,
              child: ListView(
              scrollDirection: Axis.horizontal,
                children: [
                  ItemCategory(icon: SvgPicture.asset(AppIcons.icCar), title: 'Transport'),
                  ItemCategory(icon: SvgPicture.asset(AppIcons.icCar), title: 'Transport'),
                  ItemCategory(icon: SvgPicture.asset(AppIcons.icCar), title: 'Transport'),
                  ItemCategory(icon: SvgPicture.asset(AppIcons.icCar), title: 'Transport'),
                  ItemCategory(icon: SvgPicture.asset(AppIcons.icCar), title: 'Transport'),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
