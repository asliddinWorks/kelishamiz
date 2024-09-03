
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:provider/provider.dart';

import '../../../../constants/app_icons.dart';
import '../../view_model/sign_up_view_model.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({super.key, required this.bodyRules, required this.titleRules});

  final String bodyRules;
  final String titleRules;
  @override
  Widget build(BuildContext context) {

    final read = context.read<SignUpViewModel>();
    final watch = context.watch<SignUpViewModel>();

    return Column(
      children: [
        GestureDetector(
          onTap: (){
            read.onTapPulse();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(bodyRules, style: context.textTheme.titleMedium!.copyWith(fontSize: 15)),
              ),
              watch.isPulse ? SvgPicture.asset(AppIcons.icX, width: 15, height: 15) :
              SvgPicture.asset(AppIcons.icPulse, width: 17, height: 17),
            ],
          ),
        ),
        Divider(
          color: context.color.grey.withOpacity(.5),
          height: 40,
        ),
        watch.isPulse? Column(
          children: [
            Text(titleRules),
            // const Text("Ushbu Shartnomada quyidagi atamalar quyidagi ma'nolarga ega: Veb-sayt - ma'muriyati Pudratchining zimmasiga yuklangan veb-sayti; Pudratchi -  veb-saytining ma'muriyati (moderator); foydalanuvchi - ushbu Shartnoma shartlarini qabul qilgan va Pudratchining xizmatlaridan foydalanadigan har qanday qobiliyatli jismoniy yoki yuridik shaxs; E'lon - foydalanuvchining cheksiz ko'p miqdordagi boshqa foydalanuvchilarga fuqarolik-huquqiy bitim tuzish bo'yicha ommaviy taklifi (taklifi) (tovarlarni sotib olish / sotish, ijaraga berish, xizmatlar ko'rsatish va hk)"),
            Divider(
              color: context.color.grey.withOpacity(.5),
              height: 40,
            ),
          ],
        ) :
        const SizedBox.shrink(),
      ],
    );
  }
}
