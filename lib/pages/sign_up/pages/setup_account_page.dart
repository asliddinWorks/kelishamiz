
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/core/widgets/app_button.dart';
import 'package:kelishamiz/core/widgets/region_select_menu.dart';
import 'package:kelishamiz/core/widgets/text_field_with_title.dart';
import 'package:kelishamiz/router/router.dart';

class SetupAccountPage extends StatefulWidget {
  const SetupAccountPage({super.key});

  @override
  State<SetupAccountPage> createState() => _SetupAccountPageState();
}

class _SetupAccountPageState extends State<SetupAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Akkauntni sozlash"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const TextFieldWithTitle(
                  title: "Ism",
                  hintText: "Ismingizni kiriting",
                ),
                const TextFieldWithTitle(
                  title: "Familiya",
                  hintText: "Familiyangizni kiriting",
                ),
                RegionSelectMenu(
                  onChange: (value) {},
                  title: 'Hududni tanlang',
                  menuType: MenuType.add,
                ),
              ].paddingEach(const EdgeInsets.all(15)),
            ),
          ),

          Column(
            children: [
              AppButton(
                onPressed: (){
                  context.go(RouteNames.main);
                },
                width: double.infinity,
                text: 'Saqlash',
              ).padding(const EdgeInsets.symmetric(horizontal: 15)),
              SafeArea(
                child: TextButton(
                  onPressed: (){
                    context.go(RouteNames.main);
                  },
                  child: const Text("Tashlab o'tish"),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
