
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kelishamiz/constants/app_icons.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: context.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Iphone 14 promax 256 gb', style: context.textTheme.bodyLarge),
                  Text('Telefon filtrda', style: context.textTheme.bodyMedium!.copyWith(color: context.color.grey)),
                ],
              ),
              SvgPicture.asset(AppIcons.icAnnouncementDelete, color: context.color.grey.withOpacity(.5),)
            ],
          ),
          Divider(
            height: 10,
            color: context.color.grey.withOpacity(.2),
          )
        ],
      ),
    );
  }
}
