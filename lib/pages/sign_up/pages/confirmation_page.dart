
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:provider/provider.dart';
import '../../../constants/app_icons.dart';
import '../../../core/widgets/app_button.dart';
import '../view_model/sign_up_view_model.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({super.key});

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  Widget build(BuildContext context) {

    final read = context.read<SignUpViewModel>();
    final watch = context.watch<SignUpViewModel>();

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            10.hGap,
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Tasdiqlash', style: context.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w400)),
                  ],
                ),
                50.hGap,
                Row(
                  children: [
                    Text('6 xonali SMS kod yuborildi: ', style: context.textTheme.titleSmall!.copyWith(fontSize: 12)),
                    Text('+998 90 015 85 02', style: context.textTheme.titleSmall!.copyWith(fontSize: 11, color: context.colorScheme.primary)),
                  ],
                ),
                5.hGap,
                TextField(
                  maxLength: 6,
                  onChanged: (value){
                    read.onTapButton(value);
                  },
                  decoration: InputDecoration(
                    counterText: '',
                    hintText: 'SMS kodini kiriting',
                    suffixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('00:00  ', style: context.textTheme.bodyMedium!.copyWith(color: Colors.redAccent),),
                      ],
                    ),
                  ),
                ),
                15.hGap,
                Row(
                  children: [
                    Icon(Icons.info,  size: 25, color: context.color.grey),
                    10.wGap,
                    Text('SMS kod kelmadi.', style: context.textTheme.bodyMedium!.copyWith(
                        fontSize: 12),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Text(' Qayta yuboring', style: context.textTheme.bodyMedium!.copyWith(
                          fontSize: 12,
                          color: context.colorScheme.primary),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: context.color.grey.withOpacity(.4), width: 1)),
                      child: SvgPicture.asset(AppIcons.icGoogle),
                    ),
                    10.wGap,
                    Container(
                      padding: const EdgeInsets.all(14),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: context.color.grey.withOpacity(.4), width: 1)),
                      child: SvgPicture.asset(AppIcons.icTelegram),
                    ),
                    10.wGap,
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: context.color.grey.withOpacity(.4), width: 1,),
                      ),
                      child: SvgPicture.asset(AppIcons.icApple),
                    ),
                  ],
                ),
                30.hGap,
                AppButton(
                  onPressed: watch.isActiveButton ? (){} : null,
                  height: 47,
                  width: MediaQuery.sizeOf(context).width,
                  text: 'Tasdiqlash',
                ),
                50.hGap,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
