
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kelishamiz/constants/app_icons.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/core/widgets/app_button.dart';
import 'package:kelishamiz/pages/announcements/data/model/announcements_model.dart';

class AnnouncementsItem extends StatelessWidget {
  const AnnouncementsItem({super.key, required this.model});
  final AnnouncementsModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AspectRatio(
          aspectRatio: 1/.23,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset(model.image, fit: BoxFit.cover,),
              ),
              15.wGap,
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .678,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(model.name, style: context.textTheme.titleMedium!.copyWith(fontSize: 14, fontWeight: FontWeight.w600, height: 1, overflow: TextOverflow.ellipsis),),
                        4.hGap,
                        Text('${model.price.toString()} UZS', style: context.textTheme.bodyMedium!.copyWith( overflow: TextOverflow.ellipsis)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.icAnnouncementComment, width: 20, height: 20,),
                            3.wGap,
                            Text(model.commentCount.toString(), style: context.textTheme.bodyMedium!.copyWith(fontSize: 14,fontWeight: FontWeight.w500, color: context.color.grey),)
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.icAnnouncementCall, width: 20, height: 20,),
                            3.wGap,
                            Text(model.callCount.toString(), style: context.textTheme.bodyMedium!.copyWith(fontSize: 14,fontWeight: FontWeight.w500, color: context.color.grey),)
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.icAnnouncementSeen, width: 20, height: 20,),
                            3.wGap,
                            Text(model.seenCount.toString(), style: context.textTheme.bodyMedium!.copyWith(fontSize: 14,fontWeight: FontWeight.w500, color: context.color.grey),)
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.icAnnouncementLikes, width: 20, height: 20,),
                            3.wGap,
                            Text(model.likesCount.toString(), style: context.textTheme.bodyMedium!.copyWith(fontSize: 14,fontWeight: FontWeight.w500, color: context.color.grey),)
                          ],
                        ),
                        0.wGap,
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            AppButton(
              height: 42,
              width: MediaQuery.sizeOf(context).width * .778,
              onPressed: (){},
              text: 'Reklama qilish',
            ),
            8.wGap,
            MaterialButton(
              padding: const EdgeInsets.all(0),
              onPressed: (){},
              highlightElevation: 0,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
              ),
              color: context.colorScheme.primary,
              minWidth: 42,
              height: 42,
              disabledColor: context.color.grey,
              disabledTextColor: Colors.black,
              child: SvgPicture.asset(AppIcons.icAnnouncementDelete,),
            )
          ],
        ),
        Divider(
          thickness: 1,
          height: 15,
          color: context.color.lightGrey,
        )
      ],
    );
  }
}
