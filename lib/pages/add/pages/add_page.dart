
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/core/widgets/drop_down_with_title.dart';
import 'package:kelishamiz/core/widgets/text_field_with_title.dart';
import 'package:provider/provider.dart';

import '../data/models/add_ui_model.dart';
import '../view_model/add_view_model.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {

    final read = context.read<AddViewModel>();
    final watch = context.watch<AddViewModel>();

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(bottom: 15),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  watch.selectedAddCategoryUIModel.title,
                  style: context.textTheme.titleLarge,
                ),
                const TextFieldWithTitle(
                  title: "Ism to'liq",
                ),
                const TextFieldWithTitle(
                  title: "E-mail",
                ),
                const TextFieldWithTitle(
                  title: "Telefon raqam",
                  hintText: '+998 (__) __ __ __',
                  mask: '+998 ## ### ## ##',
                  keyboardType: TextInputType.phone,
                ),
                DropDownWithTitle(
                  onChanged: (value) {
                    read.onChooseCategory(value);
                  },
                  title: 'Kategoriya',
                  dropdownValue: watch.selectedAddCategoryUIModel.title,
                  items: read.addCategoryUIModelList.map((e) {
                    return e.title;
                  },).toList(),
                ),
              ].paddingEach(const EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
            ),

            /// Select product
            if (watch.selectedAddCategoryUIModel.products.isNotEmpty)
            DropDownWithTitle(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              onChanged: (value) {
                read.onChooseProduct(value);
              },
              title: 'Tovar turi',
              items: read.selectedAddCategoryUIModel.products.map((e) {
                return e.title;
              }).toList(),
              dropdownValue: watch.selectedAddProductUIModel!.title,
            ),

            /// maxsus itemlar

            if (watch.selectedAddProductUIModel != null)
            Column(
              children: read.selectedAddProductUIModel!.items.map((e) {
                if (e is DropdownModel) {
                  return DropDownWithTitle(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    title: e.title,
                    items: e.items,
                    dropdownValue: e.value,
                    onChanged: (value) {
                      setState(() {
                        e.onChanged(value ?? '');
                      });
                    },
                  );
                }
                if (e is TextFieldModel) {
                  return TextFieldWithTitle(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    controller: e.controller,
                    title: e.title,
                    hintText: e.hintText,
                  );
                }
                return const Text('FUCK YOU!!!');
              },).toList(),
            ),


            if (watch.isCategorySelect)
            Column(
              children: [
                const TextFieldWithTitle(
                  title: "E'lon nomi",
                  maxLines: 5,
                ),
                const TextFieldWithTitle(
                  title: "Tavsif(Tavsigfa to’liqroq ma’lumot yozing)",
                  maxLines: 5,
                ),
                Switch.adaptive(
                  activeColor: context.colorScheme.primary,
                  value: true,
                  thumbIcon: WidgetStateProperty.all(Icon(
                    Icons.pause,
                    color: context.color.lightGrey,
                  )),
                  onChanged: (value) {

                },)
              ].paddingEach(const EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
            ),
          ],
        )
      ),
    );
  }
}
