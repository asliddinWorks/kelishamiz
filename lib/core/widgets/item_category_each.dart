
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/pages/category/data/models/category_each_model.dart';

class ItemCategoryEach extends StatelessWidget {
  const ItemCategoryEach({super.key, required this.categoryEachModel});

  final CategoryEachModel categoryEachModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.push(
        //   RouteNames.category,
        //   extra: 1,
        // );
      },
      child: AspectRatio(
        aspectRatio: 1/1,
        child: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: context.color.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: context.color.categoryItem,
                blurRadius: 3,
                spreadRadius: 0,
                offset: const Offset(0, 2)
              )
            ]
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AspectRatio(
                aspectRatio: 1 / .73,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: context.color.categoryItem,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(color: context.color.lightGrey,
                      offset: const Offset(0, 1),
                      spreadRadius: 0,
                        blurRadius: 3
                      ),
                    ]
                  ),
                  child: Center(
                    child: SvgPicture.asset(categoryEachModel.icon),
                  ),
                ).padding(const EdgeInsets.all(10)),
              ),
              Expanded(
                child: Text(
                  categoryEachModel.title,
                  style: context.textStyle.navigationBar.copyWith(height:1.1, fontSize: 10 ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ).padding(const EdgeInsets.symmetric(horizontal: 3)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
