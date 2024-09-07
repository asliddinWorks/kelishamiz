import 'package:flutter/material.dart';
import 'package:kelishamiz/constants/app_images.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/pages/fill_account/data/model/fill_model.dart';
import 'package:provider/provider.dart';

import '../../view_model/fill_view_model.dart';

class FillItem extends StatelessWidget {
  const FillItem({super.key, required this.model});
  final FillModel model;

  @override
  Widget build(BuildContext context) {
    final read = context.read<FillViewModel>();
    final watch = context.watch<FillViewModel>();

    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      height: 500,
      width: 328,
      decoration: BoxDecoration(
        border: Border.all(color: context.color.grey.withOpacity(.2)),
        color: context.color.lightGrey.withOpacity(.6),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          10.hGap,
          Text(model.tariffName, style: context.textTheme.titleLarge!.copyWith(fontSize: 19)),
          Text('${model.day.toString()} kun', style: context.textTheme.titleMedium!.copyWith(fontSize: 15),),
          Divider(
            height: 25,
            thickness: 1,
            color: context.color.grey.withOpacity(.2),
          ),
          10.hGap,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: context.width * 0.22,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Checkbox(
                          shape: CircleBorder(
                            side: BorderSide(color: context.color.grey),
                          ),
                          activeColor: context.colorScheme.primary,
                          side: BorderSide(color: context.color.grey, width: 1.5,),
                          tristate: true,
                          value: model.selection[0],
                          onChanged: (_){
                            read.onCheckBox(model, 0);
                          },
                        ),
                      ),
                      Text('Vebsayt', style: context.textTheme.bodyMedium!.copyWith(fontSize: 14),),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Checkbox(
                          shape: CircleBorder(
                            side: BorderSide(color: context.color.grey),
                          ),
                          activeColor: context.colorScheme.primary,
                          side: BorderSide(color: context.color.grey, width: 1.5,),
                          tristate: true,
                          value: model.selection[1],
                          onChanged: (_){
                            read.onCheckBox(model, 1);
                          },
                        ),
                      ),
                      Text('Telegram kanali', style: context.textTheme.bodyMedium!.copyWith(fontSize: 14),),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Checkbox(
                          shape: CircleBorder(
                            side: BorderSide(color: context.color.grey),
                          ),
                          activeColor: context.colorScheme.primary,
                          side: BorderSide(color: context.color.grey, width: 1.5,),
                          tristate: true,
                          value: model.selection[2],
                          onChanged: (_){
                            read.onCheckBox(model, 2);
                          },
                        ),
                      ),
                      Text('Instagram', style: context.textTheme.bodyMedium!.copyWith(fontSize: 14),),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 30,
            color: context.color.grey.withOpacity(.2),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Stack(
                children: [
                  if (model.selection[0])
                    Positioned(
                      left: 0,
                      child: Image.asset(AppImages.internet, width: 40,),
                    ),
                  if (model.selection[1])
                    Positioned(
                      left: 30,
                      child: Image.asset(AppImages.telegram, width: 40,),
                    ),

                  if (model.selection[2])
                    Positioned(
                      left: 60,
                      child: Image.asset(AppImages.instagram, width: 40,),
                    ),
                ],
              ),
            ),
          ),

          Text("${model.price.toString()} so'm", style: context.textTheme.titleMedium!.copyWith(fontSize: 16, fontWeight: FontWeight.w700),),
        ],
      ),
    );
  }
}
