
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/core/widgets/app_button.dart';
import 'package:kelishamiz/pages/fill_account/pages/widgets/table_item.dart';
import 'package:kelishamiz/router/router.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../view_model/fill_view_model.dart';

class PaymentTablePage extends StatefulWidget {
  const PaymentTablePage({super.key});

  @override
  State<PaymentTablePage> createState() => _PaymentTablePageState();
}

class _PaymentTablePageState extends State<PaymentTablePage> {
  @override
  Widget build(BuildContext context) {
    final tables = context.read<FillViewModel>().tables;
    final read = context.read<FillViewModel>();
    final watch = context.watch<FillViewModel>();
    final filteredTables = watch.tableType == 1 ? tables.where((table) => !table.isInput).toList() : tables.where((table) => table.isInput).toList();

    return Scaffold(
      body: ListView(
        children: [
          70.hGap,
          AspectRatio(
            aspectRatio: 1/.56,
            child: Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 35),
              decoration: BoxDecoration(
                color: context.color.lightGrey.withOpacity(.6),
                boxShadow: [
                  BoxShadow(
                    color: context.color.grey,
                    offset: const Offset(0, 1),
                    blurRadius: 3
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Sizning hisobingiz:', style: context.textTheme.bodyLarge!.copyWith(
                        color: context.color.black.withOpacity(.5),
                      )),
                      Text('6 658 900 so\'m', style: context.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600 )),
                    ],
                  ),
                  AppButton(
                    width: context.width * .6,
                    height: context.width * .115,
                    onPressed: (){
                      context.push(RouteNames.fill);
                    },
                    text: 'Balansni to\'ldirish',
                  ),
                ],
              ),
            ),
          ),
          40.hGap,

          ToggleSwitch(
            borderWidth: 1,
            dividerMargin: 10,
            borderColor: [
              context.color.grey.withOpacity(.2),
            ],
            customHeights: const [50, 50, 50],
            customWidths: [.31.wp(context), .31.wp(context), .31.wp(context)],
            inactiveBgColor:
              context.color.lightGrey.withOpacity(.6),
            activeBgColor: [
              context.colorScheme.primary,
            ],
            initialLabelIndex: watch.tableType,
            totalSwitches: 3,
            animate: true,
            animationDuration: 100,
            labels: const ['Barchasi', 'Chiqimlar', 'Kirimlar'],
            onToggle: (index) {
              read.changeTableType(index);
              // print('switched to: $index');
            },
          ).padding(const EdgeInsets.all(15)),

          Container(
            height: 58,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: context.color.lightGrey.withOpacity(.6),
              borderRadius: BorderRadius.circular(5)
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 9,
                  child: Text('To\'lov turi', style: context.textTheme.titleSmall!.copyWith(
                    color: context.color.black.withOpacity(.7),
                  )),
                ),
                Expanded(
                  flex: 8,
                  child: Text('Narxi', style: context.textTheme.titleSmall!.copyWith(
                    color: context.color.black.withOpacity(.7),
                  )),
                ),
                Expanded(
                  flex: 7,
                  child: Text('Sanasi', style: context.textTheme.titleSmall!.copyWith(
                    color: context.color.black.withOpacity(.7),
                  )),
                ),
              ],
            ).padding(const EdgeInsets.all(12)),
          ),
          AspectRatio(
            aspectRatio: 1/.8,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 1/.15,
                mainAxisSpacing: 7,
              ),
              itemCount: watch.tableType == 0 ? tables.length : filteredTables.length,
              itemBuilder: (context, index) => TableItem(
                model: watch.tableType == 0 ? tables[index] : filteredTables[index],
              ),
            ),
          ).padding(const EdgeInsets.all(15))
        ],
      ),
    );
  }
}
