import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kelishamiz/constants/app_colors.dart';
import 'package:kelishamiz/constants/app_icons.dart';
import 'package:kelishamiz/constants/fake_image.dart';
import 'package:kelishamiz/core/data/models/product_model.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.color.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: InkWell(
          onTap: () => Navigator.pop(context),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.chevron_left),
              5.wGap,
              Text('Orqaga', style: context.textTheme.bodyMedium),
            ],
          ),
        ),
      ),
      body: productComplete(widget.productModel)
    );
  }

  Widget productComplete(ProductModel productModel) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15),
      child: ListView(
        children: [
          AspectRatio(
            aspectRatio: 1/.68,
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: PageView(
                pageSnapping: true,
                children: [
                  Image.asset(productModel.image!, fit: BoxFit.cover,),
                  Image.asset(productModel.image!, fit: BoxFit.cover,),
                ],
              ),
            ),
          ),
          15.hGap,
          AspectRatio(
            aspectRatio: 1/.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AspectRatio(
                  aspectRatio: 1/.95,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      border: Border.all(color: context.color.grey.withOpacity(.5)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(productModel.image!, fit: BoxFit.cover,),
                  ),
                ),
                // 5.wGap,
                AspectRatio(
                  aspectRatio: 1/.95,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      border: Border.all(color: context.color.grey.withOpacity(.5)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(productModel.image!, fit: BoxFit.cover,),
                  ),
                ),
                // 5.wGap,
                AspectRatio(
                  aspectRatio: 1/.95,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      border: Border.all(color: context.color.grey.withOpacity(.5)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(productModel.image!, fit: BoxFit.cover,),
                  ),
                ),
              ],
            ),
          ),
          25.hGap,
          Text('Qisqacha ma\'lumot', style: context.textTheme.titleMedium!.copyWith(fontSize: 16)),
          10.hGap,
          const Text('A14 Bionic - 5nm texnologiyasida ishlab va ushbu chiqarilgan birinchi iPhone protsessori. Uning va rivojlangan ichki qismlari atomlarning kattaligi teng. Unda 40% ko\'proq tranzistor mavjud,  shuning uchun protsessor tezroq ishlaydi va shu bilan birga batareyaning quvvatini yanada tejamkor saqlaydi. Va yangi signal'),
          25.hGap,
          AspectRatio(
            aspectRatio: 1/.8,
            child: Container(
              decoration: BoxDecoration(
                color: context.color.lightGrey,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  10.hGap,
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(FakeImages.user),
                  ),
                  Column(
                    children: [
                      Text('Imomov Sunnat', style: context.textTheme.titleMedium!.copyWith(height: 1)),
                      Text('online', style: context.textTheme.bodySmall!.copyWith(color: context.color.grey)),
                      Text('(2016 yildan buyon)', style: context.textTheme.bodySmall!.copyWith(color: context.color.grey)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(7),
                        width: 39,
                        height: 39,
                        decoration: BoxDecoration(
                          color: context.colorScheme.secondary,
                          shape: BoxShape.circle
                        ),
                        child: SvgPicture.asset(AppIcons.icMessage),
                      ),
                      10.wGap,
                      Container(
                        padding: const EdgeInsets.all(7),
                        width: 39,
                        height: 39,
                        decoration: BoxDecoration(
                            color: context.colorScheme.secondary,
                            shape: BoxShape.circle
                        ),
                        child: SvgPicture.asset(AppIcons.icHeart),
                      ),
                    ],
                  ),
                  0.hGap,
                  MaterialButton(
                    onPressed:(){},
                    highlightElevation: 0,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    height: 50,
                    color: context.colorScheme.primary,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppIcons.icCall),
                        10.wGap,
                        Text('Raqamni ko\'rish', style: context.textTheme.titleSmall!.copyWith(color: context.color.white, fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          50.hGap
        ],
      ),
    );
  }
}
