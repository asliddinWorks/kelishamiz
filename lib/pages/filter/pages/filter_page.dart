
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/core/widgets/app_switch_with_title.dart';
import 'package:kelishamiz/core/widgets/drop_down_with_title.dart';
import 'package:kelishamiz/core/widgets/text_field_with_title.dart';
import 'package:kelishamiz/pages/add/pages/widgets/price_type_button.dart';

import '../../../core/widgets/app_button.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  // final _switchKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // bool isSwitched = false;
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter', style: context.textTheme.titleLarge),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            DropDownWithTitle(
              titleStyle: context.textTheme.titleSmall,
              title: 'Manzil',
              onChanged: (_){},
              dropdownValue: 0,
              items: const [
                'Toshkent',
                'Andijon',
                'Farg\'ona',
                'Namangan',
                'Sirdaryo',
                'Jizzax',
                'Surxondaryo',
                'Qashqadaryo',
                'Samarqand',
                'Buxoro',
                'Navoiy',
                'Xorazm',
                'Qoraqalpog\'iston',
              ],
            ),
            DropDownWithTitle(
              titleStyle: context.textTheme.titleSmall,
              title: 'Kategoriya',
              onChanged: (_){},
              dropdownValue: 0,
              items: const [
                'Transport',
                "Ko'chmas mulk",
                'Ish va xizmatlar',
                'Elektronika va texnika',
                "Uy-bog', mebel ",
                'Qurulish mollari',
                'Ishlab chiqarish',
                'Asbob uskunalar',
                'Shaxsiy buyumlar',
                'boshqalar',
              ],
            ),
            DropDownWithTitle(
              titleStyle: context.textTheme.titleSmall,
              title: 'To’lov turi',
              onChanged: (_){},
              dropdownValue: 0,
              items: const [
                'Naxt'
              ],
            ),
            PriceTypeButton(
              onPressed: (_){},
            ),
            TextFieldWithTitle(
              titleStyle: context.textTheme.titleSmall,
              title: 'Qiymati',
              onChanged: (_){},
            ),
            const Text('Narxi'),
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: SizedBox(
                      height: 40,
                      width: context.width * .25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Dan', style: context.textTheme.bodyMedium!.copyWith(
                              color: context.color.black.withOpacity(.6))).padding(const EdgeInsets.all(10)),
                          VerticalDivider(
                            color: context.color.grey.withOpacity(.2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                5.hGap,
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: SizedBox(
                      height: 40,
                      width: context.width * .25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Gacha', style: context.textTheme.bodyMedium!.copyWith(
                              color: context.color.black.withOpacity(.6))).padding(const EdgeInsets.all(10)),
                          VerticalDivider(
                            color: context.color.grey.withOpacity(.2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const AppSwitchWithTitle(
                  title: 'Kelishish mumkin',
                ),
                10.hGap,
                const AppSwitchWithTitle(
                  title: 'Yangilari',
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: AppButton(
                    height: 47,
                    onPressed: (){},
                    appButtonType: AppButtonType.outlined,
                    text: 'Bekor qilish',
                  ),
                ),
                10.wGap,
                Expanded(
                  child: AppButton(
                    height: 47,
                    onPressed: (){
                    },
                    appButtonType: AppButtonType.filled,
                    text: 'Izlash',
                  ),
                ),
              ],
            ),
          ].paddingEach(const EdgeInsets.symmetric( vertical: 15)),
        ),
      ),
    );
  }
}
