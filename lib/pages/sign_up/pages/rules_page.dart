
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/pages/sign_up/widgets/sign_up_widget.dart';

class RulesPage extends StatefulWidget {
  const RulesPage({super.key});

  @override
  State<RulesPage> createState() => _RulesPageState();
}

class _RulesPageState extends State<RulesPage> {
  @override
  Widget build(BuildContext context) {

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

            const SignUpWidget(),
            const SignUpWidget(),

          ],
        ),
      ),
    );
  }
}
