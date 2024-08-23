import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kelishamiz/constants/app_icons.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class ItemTopProduct extends StatelessWidget {
  const ItemTopProduct({super.key, required this.image, required this.name,
    required this.title, required this.amount, required this.where,
    required this.date, required this.hour, required this.axisCount,});

  final Widget image;
  final String name;
  final String title;
  final int amount;
  final String where;
  final String date;
  final String hour;
  final int axisCount;

  // bool isCount(){
  //   if(axisCount == 1){
  //     return  true;
  //   }
  //   return false;
  // }

  @override
  Widget build(BuildContext context) {
    return (axisCount == 1) ?
    AspectRatio(
        aspectRatio: 1/.35,
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: context.color.lightGrey,
                    spreadRadius: 2,
                    blurRadius: 1
                ),
              ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 7),
                        height: 120,
                        width: 104,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: image,
                      ),
                    ]
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 7, left: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width/2.4,
                            child: Stack(
                                children: [
                                  RichText(
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(text: name, style: context.textTheme.labelLarge!.copyWith(
                                            fontWeight: FontWeight.bold, fontSize: 14)),
                                        TextSpan(text: ' $title', style: context.textTheme.labelMedium!.copyWith(fontSize: 14)),
                                      ],
                                    ),
                                  ),
                                ]
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width/2.2,
                            child: Row(
                              children: [
                                Text(amount.toString(), style: context.textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold),),
                                Text(" so'm", style: context.textTheme.labelSmall),
                              ],
                            ),
                          ),
                          const Divider(
                            height: 1,
                            endIndent: 4,indent: 4,
                            thickness: 1,
                            color: Colors.black,
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: MediaQuery.sizeOf(context).width/1.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(where, style:

                          Row(
                            children: [
                              Text('$date | ', style:

                              Text(hour, style:


                            ],
                          )
                        ],
                      ),
                    )
                  ],
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
                  shape: BoxShape.circle
              ),
              child: SvgPicture.asset(AppIcons.icFavoriteItem),
            )
          ],
        )
      ],
    ),
    ) :
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
        BoxShadow(color: context.color.lightGrey,
            spreadRadius: 2,
            blurRadius: 1
        ),
        ]
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
                  child: image,
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
                      TextSpan(text: name, style: context.textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 14)),
                      TextSpan(text: ' $title', style: context.textTheme.labelMedium!.copyWith(fontSize: 14)),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Text(amount.toString(), style: context.textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold),),
                    Text(" so'm", style: context.textTheme.labelSmall),
                  ],
                ),
                const SizedBox(height: 12),
                const Divider(
                  height: 1,
                  endIndent: 4,indent: 4,
                  thickness: 1,
                  color: Colors.grey,
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(where, style: context.textTheme.labelSmall!.copyWith(color: Colors.grey, fontSize: 10),),
                    Row(
                      children: [
                        Text('$date | ', style: context.textTheme.labelSmall!.copyWith(color: Colors.grey, fontSize: 10)),
                        Text(hour, style: context.textTheme.labelSmall!.copyWith(color: Colors.grey, fontSize: 10))
                      ],
                    )
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
