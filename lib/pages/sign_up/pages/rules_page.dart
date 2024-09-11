
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/pages/sign_up/pages/widgets/sign_up_widget.dart';
import 'package:provider/provider.dart';

import '../view_model/sign_up_view_model.dart';

class RulesPage extends StatefulWidget {
  const RulesPage({super.key});

  @override
  State<RulesPage> createState() => _RulesPageState();
}

class _RulesPageState extends State<RulesPage> {

  @override
  void initState() {
    context.read<SignUpViewModel>().initialize();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    final read = context.read<SignUpViewModel>();
    final watch = context.watch<SignUpViewModel>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            30.hGap,
            Text('Foydalanish shartalari', style: context.textTheme.titleLarge!.copyWith(fontSize: 22)),
            15.hGap,
            Text("Sayti har xil turdagi e'lonlarni joylashtirish uchun platforma, shuningdek, xaridor va sotuvchi o'rtasidagi o'zaro manfaatli ittifoq vositasi. Ushbu foydalanuvchi shartnomasi (bundan buyon matnda Shartnoma deb yuritiladi)  veb-saytida e'lonlarni joylashtirish bo'yicha xizmatlarni taqdim etish bo'yicha ommaviy taklifi bo'lib, Shartnoma veb-sayti tarmoq foydalanuvchilari tomonidan. \nO'zbekiston Respublikasi Fuqarolik Kodeksining 367-375-moddalariga muvofiq, quyida keltirilgan ommaviy oferta shartlari qabul qilingan (qabul qilingan) taqdirda, har qanday qobiliyatli jismoniy yoki yuridik shaxs (keyingi o'rinlarda Foydalanuvchi deb yuritiladi) ushbu Shartnoma shartlariga rioya qilishni o'z zimmasiga oladi.",
              style: context.textTheme.bodyMedium),
            20.hGap,

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: read.rules.length,
              itemBuilder: (context, index){
                return SignUpWidget(
                  onTap: (){
                    read.onTapRules(index);
                  },
                  bodyRules: read.rulesCount[index],
                  titleRules: read.rules[index],
                  isActive: watch.rulesSelection[index],
                );
              },
            ),
            // const SignUpWidget(),
            // const SignUpWidget(),

          ],
        ),
      ),
    );
  }
}
