import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kelishamiz/constants/app_icons.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';

import '../data/models/product_model.dart';

class ItemTopProduct extends StatelessWidget {
  const ItemTopProduct({super.key, required this.productModel, this.axisCount,});

  final ProductModel productModel;
  final int? axisCount;

  @override
  Widget build(BuildContext context) {
    return (axisCount == 1) ?
    ProductHorizontal(productModel: productModel) :
    ProductGrid(productModel: productModel);
  }
}

/// ProductGrid
class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: context.color.grey.withOpacity(.3),
            offset: const Offset(0, 1),
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1/.78,
            child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image(
                      image: AssetImage(productModel.image!),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(6),
                        padding: const EdgeInsets.all(5),
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                            color: context.color.backgroundLike,
                            shape: BoxShape.circle
                        ),
                        child: SvgPicture.asset(AppIcons.icFavoriteItem),
                      )
                    ],
                  )
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                RichText(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: productModel.title, style: context.textStyle.productTitle),
                      TextSpan(text: ' ${productModel.description}', style: context.textStyle.productDescription),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Text(productModel.price.toString(), style: context.textStyle.price),
                    Text(" so'm", style: context.textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: 12),
                Divider(
                  height: 1,
                  // indent: 4,
                  // endIndent: 4,
                  thickness: 1,
                  color: context.color.dividerColor,
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(productModel.location ?? '', style: context.textStyle.productDate),
                    Text('${productModel.date}', style: context.textStyle.productDate),
                    // Row(
                    //   children: [
                    //     Text('$date | ', style: context.textTheme.labelSmall!.copyWith(color: Colors.grey, fontSize: 10)),
                    //     Text(hour, style: context.textTheme.labelSmall!.copyWith(color: Colors.grey, fontSize: 10))
                    //   ],
                    // )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// ProductHorizontal
class ProductHorizontal extends StatelessWidget {
  const ProductHorizontal({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / .35,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: context.color.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: context.color.grey.withOpacity(.3),
                  offset: const Offset(0, 1),
                  blurRadius: 3,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image(
                      height: double.infinity,
                      width: .28.wp(context),
                      fit: BoxFit.cover,
                      image: AssetImage(productModel.image!),
                    ),
                  ),
                  10.wGap,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: MediaQuery.sizeOf(context).width/2.4,
                              child: Stack(
                                  children: [
                                    RichText(
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(text: productModel.title, style: context.textStyle.productTitle),
                                          TextSpan(text: ' ${productModel.description}', style: context.textStyle.productDescription),
                                        ],
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ) ,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            const SizedBox(height: 5),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width/2.2,
                              child: Row(
                                children: [
                                  Text(productModel.price.toString(), style: context.textStyle.price,),
                                  Text(" so'm", style: context.textTheme.bodyMedium,),
                                ],
                              ),
                            ),
                            Divider(
                              height: 3,
                              thickness: 1,
                              color: context.color.dividerColor,
                            ),
                          ],
                        ),

                        SizedBox(
                          width: MediaQuery.sizeOf(context).width/1.6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(productModel.location ?? '', style: context.textStyle.productDate),
                              Row(
                                children: [
                                  Text(productModel.date ?? '', style: context.textStyle.productDate),
                                  // Text('$date | ', style: context.textStyle.productDate),
                                  // Text(hour, style: context.textStyle.productDate),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.all(6),
                padding: const EdgeInsets.all(5),
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                  color: context.color.backgroundLike,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(AppIcons.icFavoriteItem),
              )
            ],
          )
        ],
      ),
    );
  }
}


