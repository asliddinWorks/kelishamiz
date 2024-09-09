
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
                  watch.selectedAddUIModel.title,
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
                  title: 'Kategoriya',
                  dropdownValue: watch.selectedAddUIModel.title,
                  items: read.addUIModelList.map((e) {
                    return e.title;
                  },).toList(),
                  onChanged: (value) {
                    read.onChooseCategory(value);
                  },
                ),
              ].paddingEach(const EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
            ),
            /// maxsus itemlar
            Column(
              children: read.selectedAddUIModel.items.map((e) {
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
              ].paddingEach(const EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
            ),
          ],
        )
      ),
    );
  }
}
