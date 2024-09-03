
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kelishamiz/constants/app_icons.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/core/widgets/app_button.dart';
import 'package:kelishamiz/router/router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

import '../view_model/sign_up_view_model.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

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
                    Text('Ro\'yxatdan o\'tish', style: context.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w400)),
                  ],
                ),
                50.hGap,
                Text('telefon raqamni kiriting', style: context.textTheme.titleSmall),
                5.hGap,
                TextField(
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    MaskTextInputFormatter(
                      mask: '+998 ## ### ## ##',
                      filter: { "#": RegExp(r'[0-9]') },
                      type: MaskAutoCompletionType.lazy,
                    ),
                  ],
                  decoration: const InputDecoration(
                    hintText: '+998 90 123 45 67',
                  ),
                ),
                15.hGap,
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        read.onTapCheckBox();
                      },
                      child: (watch.isChecked) ?
                      Icon(Icons.check_circle_outline, size: 20, color: context.colorScheme.primary):
                      Icon(Icons.circle_outlined,  size: 20, color: context.colorScheme.primary),

                    ),
                    10.wGap,
                    GestureDetector(
                      onTap: (){
                        context.push(RouteNames.rules);
                      },
                      child: Text('Foydalanish shartlarini', style: context.textTheme.bodyMedium!.copyWith(
                          fontSize: 12,
                          color: context.colorScheme.primary),
                      ),
                    ),Text(' qabul qilaman', style: context.textTheme.bodyMedium!.copyWith(
                        fontSize: 12,
                        color: context.color.grey),
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
                          border: Border.all(color: context.color.grey.withOpacity(.4), width: 1)),
                      child: SvgPicture.asset(AppIcons.icApple),
                    ),
                  ],
                ),
                30.hGap,
                AppButton(
                  onPressed: watch.isChecked? (){
                    context.push(RouteNames.confirmation);
                  } : null,
                  height: 47,
                  width: MediaQuery.sizeOf(context).width,
                  text: 'Davom etish',
                ),
                30.hGap,
                Text('Ro’yhatdan o’tganmisiz?', style: context.textTheme.bodyMedium),
                GestureDetector(
                  child: Text('Sign In', style: context.textTheme.bodyMedium!.copyWith(
                      color: context.colorScheme.primary)),
                ),
                30.hGap
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    } else if (newValue.text.compareTo(oldValue.text) != 0) {
      var newText = newValue.text;

      if (newText.length >= 14) {
        newText = newText.substring(0, 14);
      }

      if (newText.length > 4) {
        newText = newText.replaceRange(4, 5, ' ');
      }
      if (newText.length > 7) {
        newText = newText.replaceRange(7, 8, ' ');
      }if (newText.length > 10) {
        newText = newText.replaceRange(10, 11, '-');
      }
      if (newText.length > 13) {
        newText = newText.replaceRange(13, 14, '-');
      }

      return newValue.copyWith(
          text: newText,
          selection: TextSelection.collapsed(offset: newText.length));
    } else {
    return newValue;
    }
  }
}
