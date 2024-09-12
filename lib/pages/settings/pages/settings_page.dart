
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/core/widgets/app_button.dart';
import 'package:kelishamiz/core/widgets/drop_down_with_title.dart';
import 'package:kelishamiz/core/widgets/text_field_with_title.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sozlamalar'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextFieldWithTitle(
                    title: 'Ism',
                  ),
                  DropDownWithTitle(
                    title: 'Hudud',
                    onChanged: (value) {},
                    dropdownValue: '',
                    items: const [
                      'Andijon'
                    ],
                  ),
                  const TextFieldWithTitle(
                    title: 'Manzil',
                  ),
                  AppButton(
                    onPressed: () {},
                    text: 'Saqlash',
                  ),

                  const TextFieldWithTitle(
                    title: 'Telefon raqam',
                    mask: '+998 ## ### ## ##',
                    keyboardType: TextInputType.phone,
                  ),
                  AppButton(
                    onPressed: () {},
                    text: 'Saqlash',
                  ),

                  const TextFieldWithTitle(
                    title: 'Eski parol',
                  ),
                  const TextFieldWithTitle(
                    title: 'Yangi parol',
                  ),
                  const TextFieldWithTitle(
                    title: 'Yangi parol qayta',
                  ),
                  AppButton(
                    onPressed: () {},
                    text: 'Saqlash',
                  ),

                  const TextFieldWithTitle(
                    title: 'Yangi e-mail',
                  ),
                  AppButton(
                    onPressed: () {},
                    text: 'Saqlash',
                  ),

                ].paddingEach(const EdgeInsets.all(15)),
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: context.color.lightGrey,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: context.color.grey.withOpacity(.2))
                    ),
                    child: AppButton(
                      onPressed: () {},
                      text: 'Profildan chiqish',
                      width: double.infinity,
                      appButtonType: AppButtonType.outlined,
                      textColor: Colors.red,
                    ),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: const Text("Profilni o'chirish",
                      style: TextStyle(color: Colors.red),),
                    // text: "Profildan o'chirish",
                    // width: double.infinity,
                    // appButtonType: AppButtonType.outlined,
                    // textColor: Colors.red,
                  ),
                ].paddingEach(
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//   @override
//   void initState() {
//     final switchRenderObject = _switchKey.currentContext?.findRenderObject();
//     if (switchRenderObject != null) {
//       final switchWidth = switchRenderObject.size.width;
//       print('Switch width: $switchWidth');
//     }
//     super.initState();
//   }
//
// }
//
//