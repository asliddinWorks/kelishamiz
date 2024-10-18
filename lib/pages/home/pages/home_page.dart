
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kelishamiz/constants/app_icons.dart';
import 'package:kelishamiz/constants/fake_image.dart';
import 'package:kelishamiz/core/data/models/product_model.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/core/widgets/app_button.dart';
import 'package:kelishamiz/pages/home/pages/widgets/item_category.dart';
import 'package:kelishamiz/core/widgets/item_top_product.dart';
import 'package:provider/provider.dart';
import '../../../core/view_model/app_view_model.dart';
import '../../../core/widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // int axisCount = 1;

  @override
  Widget build(BuildContext context) {

    final readAxisCount = context.watch<AppViewModel>();

    return Scaffold(
      backgroundColor: context.color.backgroundColor,
      appBar: AppBar(
        toolbarHeight: 85,
        flexibleSpace: CustomAppBar(
          onTapGrid: () {
            // axisCount = axisCount == 1 ? 2 : 1;
            readAxisCount.saveGridAxisCount();
            setState(() {});
          },
          onTapFilter: () {},
          onChangeSearch: () {},
          onTapMenu: () {},
          onTapSearch: () {},
        ),
      ),
      body: ListView(
        children: [
          10.hGap,
          Stack(
            children: [
              Container(
                // width: 380,
                height: 210,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: context.colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "assets/images/vacancy.png",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: context.colorScheme.primary,
                      ),
                      height: 35,
                      width: 140,
                      child: Text("Bo'sh ish o'rni", style: context.textTheme.bodyLarge!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold , fontSize: 14)),
                    ),
                     Text("ro'yxatdan \no'tish !", style: context.textTheme.bodyLarge!.copyWith(
                        color: context.colorScheme.primary, fontWeight: FontWeight.bold , fontSize: 14)),
                  ],
                ),
              )
            ],
          ).padding(const EdgeInsets.all(10)),
          25.hGap,
          Text('Kategoriyalar', style: context.textTheme.titleMedium,).padding(const EdgeInsets.all(10)),
          15.hGap,
          SizedBox(
            height: 130,
            width: MediaQuery.sizeOf(context).width,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              children: [
                ItemCategory(icon: SvgPicture.asset(AppIcons.icCar), title: 'Transport', index: 0,),
                ItemCategory(icon: SvgPicture.asset(AppIcons.icCategoryHome), title: "Ko'chmas mulk",index: 1,),
                ItemCategory(icon: SvgPicture.asset(AppIcons.icService), title: 'Ish va xizmatlar',index: 2,),
                ItemCategory(icon: SvgPicture.asset(AppIcons.icElectronics), title: 'Elektronika va texnika',index: 3,),
                ItemCategory(icon: SvgPicture.asset(AppIcons.icFurniture), title: "Uy-bog', mebel ",index: 4,),
                ItemCategory(icon: SvgPicture.asset(AppIcons.icConstructions), title: 'Qurulish mollari',index: 5,),
                ItemCategory(icon: SvgPicture.asset(AppIcons.icProduction), title: 'Ishlab chiqarish',index: 6,),
                ItemCategory(icon: SvgPicture.asset(AppIcons.icEquipment), title: 'Asbob uskunalar',index: 7,),
                ItemCategory(icon: SvgPicture.asset(AppIcons.icItems), title: 'Shaxsiy buyumlar',index: 8,),
                ItemCategory(icon: SvgPicture.asset(AppIcons.icOthers), title: 'boshqalar',index: 9,),
              ],
            ),
          ),
          25.hGap,
          Text('Top mahsulotlar', style: context.textTheme.titleMedium!).padding(const EdgeInsets.all(10)),
          GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: readAxisCount.axisCount == 1 ? 1/.35 : 1/1.45,
              crossAxisCount: readAxisCount.axisCount,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              return ItemTopProduct(
                productModel: ProductModel(
                  title: 'BYD Chazor DMI',
                  description: '120km Flagship Full pozitsiya faqat naxtga',
                  price: '370 196 800',
                  location: 'Toshkent',
                  date: '02.02.22 | 13:22',
                  image: FakeImages.car,
                ),
                axisCount: readAxisCount.axisCount,
              );
            },
          ),
          AppButton(
            onPressed: (){},
            height: 47,
            text: "Ko'proq ko'rsatish",
          ).padding(const EdgeInsets.symmetric(horizontal: 10, vertical: 25)),

          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/reklama.png'),
          ).padding(const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 30)),

          Text('Hamma mahsulotlar', style: context.textTheme.titleMedium!).padding(const EdgeInsets.all(10)),
          GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: readAxisCount.axisCount == 1 ? 1/.35 : 1/1.45,
              crossAxisCount: readAxisCount.axisCount,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              return ItemTopProduct(
                productModel: ProductModel(
                  title: 'BYD Chazor DMI',
                  description: '120km Flagship Full pozitsiya faqat naxtga',
                  price: '370 196 800',
                  location: 'Toshkent',
                  date: '02.02.22 | 13:22',
                  image: FakeImages.car,
                ),
                axisCount: readAxisCount.axisCount,
              );
            },
          ),

          AppButton(
            onPressed:  (){},
            height: 47,
            text: "Ko'proq ko'rsatish",
          ).padding(const EdgeInsets.only(left:  10,right: 10,  top:  25, bottom: 50)),
        ],
      )
    );
  }

}
