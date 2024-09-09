
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kelishamiz/constants/app_icons.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/pages/fill_account/data/model/table_model.dart';

class TableItem extends StatelessWidget {
  const TableItem({super.key, required this.model});
  final TableModel model;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1/.5,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 9,
                child: Text(model.paymentType, style: context.textTheme.titleSmall!.copyWith(
                  color: context.color.black.withOpacity(.7),
                )),
              ),
              Expanded(
                flex: 8,
                child: Row(
                  children: [
                    model.isInput ? SvgPicture.asset(AppIcons.icInput,) : SvgPicture.asset(AppIcons.icOutput),
                    7.wGap,
                    Text(model.price.toString(), style: context.textTheme.titleSmall!.copyWith(
                      color: context.color.black.withOpacity(.7),
                    )),
                  ],
                ),
              ),
              Expanded(
                flex: 7,
                child: Text(model.date, style: context.textTheme.titleSmall!.copyWith(
                  color: context.color.black.withOpacity(.7),
                )),
              ),
            ],
          ).padding(EdgeInsets.symmetric(horizontal: 11)),
          10.hGap,
          Divider(
            height: 15,
            color: context.color.grey.withOpacity(.2),
          )
        ],
      ),
    );
  }
}
