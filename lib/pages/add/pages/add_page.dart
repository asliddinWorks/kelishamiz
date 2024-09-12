
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/core/widgets/app_button.dart';
import 'package:kelishamiz/core/widgets/drop_down_with_title.dart';
import 'package:kelishamiz/core/widgets/text_field_with_title.dart';
import 'package:kelishamiz/pages/add/pages/widgets/add_image.dart';
import 'package:kelishamiz/pages/add/pages/widgets/price_type_button.dart';
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
                Row(
                  children: [
                    Text(
                      'Narxni kelishish',
                      style: context.textTheme.bodyLarge,
                    ),
                    const Spacer(),
                    Switch(
                      activeColor: context.colorScheme.primary,
                      value: true,
                      thumbIcon: WidgetStateProperty.all(Icon(
                        Icons.pause,
                        color: context.color.lightGrey,
                      )),
                      onChanged: (value) {

                      },),
                  ],
                ),
                PriceTypeButton(
                  onPressed: (index) {
                    print(index);
                  },
                ),

                const TextFieldWithTitle(
                  title: 'Qiymati',
                  hintText: 'Qiymatini kiriting',
                ),

                const AddImage(),

                AppButton(
                  onPressed: (){},
                  text: "E'lon yuklash",
                  height: 50,
                  fillTextStyle: context.textTheme.titleMedium!.copyWith(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ].paddingEach(const EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
            ),
          ],
        )
      ),
    );
  }
}


// class DashedBorderPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.black
//
//       ..strokeWidth = 2.0
//       ..style = PaintingStyle.stroke;
//
//     const dashLength = 10.0; // Adjust the dash length as needed
//     const gapLength = 5.0; // Adjust the gap length as needed
//
//     final path = Path();
//     path.moveTo(0, 0);
//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();
//
//
//     canvas.drawPath(path, paint);
//
//
//     // Draw the dashed lines
//     final dashPath = Path();
//     for (double x = 0; x < size.width; x += dashLength + gapLength) {
//     dashPath.moveTo(x, 0);
//     dashPath.lineTo(x + dashLength, 0);
//     dashPath.moveTo(x, size.height);
//     dashPath.lineTo(x + dashLength, size.height);
//     }
//
//     canvas.drawPath(dashPath, paint);
//     }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }
