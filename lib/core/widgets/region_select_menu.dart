
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class RegionSelectMenu extends StatefulWidget {
  const RegionSelectMenu({
    super.key, required this.onChange,
    this.regionMenuValueType = RegionMenuValueType.full,
    this.menuType = MenuType.main, this.title,
  });

  final void Function(String value) onChange;
  final RegionMenuValueType regionMenuValueType;
  final MenuType menuType;
  final String? title;

  @override
  State<RegionSelectMenu> createState() => _RegionSelectMenuState();
}

class _RegionSelectMenuState extends State<RegionSelectMenu> {

  MenuController menuController = MenuController();
  String menuValue = 'Hududni tanlang';
  List<RegionModel> regions = [
    RegionModel(
      name: 'Andijon viloyati',
      provinces: [
        "Andijon shahri",
        "Andijon tumani",
        "Asaka tumani",
        "Baliqchi tumani",
        "Bo'z tumani",
        "Buloqboshi tumani",
        "Izboskan tumani",
        "Jalolquduq tumani",
        "Marhamat tumani",
        "Oltinko'l tumani",
        "Paxtaobod tumani",
        "Qo'rg'ontepa tumani",
        "Shahrixon tumani",
        "Ulug'nor tumani",
        "Xo'jaobod tumani",
        "Xonobod shahri",
      ],
    ),

    RegionModel(
      name: 'Buxoro viloyati',
      provinces: [
        "Buxoro shahar",
        "Olot tumani",
        "Vobkent tumani",
        "Buxoro tumani",
        "G'ijduvon tumani",
        "Jondor tumani",
        "Kogon tumani",
        "Qorako'l tumani",
        "Romitan tumani",
        "Romitan shahri",
        "Shofirkon tumani",
        "Peshku tumani",
      ],
    ),
    //
    RegionModel(
      name: "Farg'ona viloyati",
      provinces: [
        "Beshariq tumani",
        "Bog'dod tumani",
        "Buvayda tumani",
        "Dang'ara tumani",
        "Farg'ona shahri",
        "Farg'ona tumani",
        "Furqat tumani",
        "Marg'ilon shahri",
        "O'zbekiston tumani",
        "Oltiariq tumani",
        "Qo'qon shahri",
        "Qo'shtepa tumani",
        "Quva tumani",
        "Quvasoy shahri",
        "Rishton tumani",
        "So'x tumani",
        "Toshloq tumani",
        "Uchko'prik tumani",
        "Yozyovon tumani",
      ],
    ),
    //
    RegionModel(
      name: 'Jizzax viloyati',
      provinces: [
        "Jizzax shahar",
        "Arnasoy tumani",
        "Mirzacho'l tumani",
        "G'allaorol tumani",
        "Do'stlik tumani",
        "Zarbdor tumani",
        "Zafarobod tumani",
        "Zomin tumani",
        "Paxtakor tumani",
        "Baxmal tumani",
        "Sharof Rashidov tumani",
        "Forish tumani",
        "Yangiobod tumani",
      ],
    ),
    //
    RegionModel(
      name: 'Namangan viloyati',
      provinces: [
        "Chortoq tumani",
        "Chust tumani",
        "Kosonsoy tumani",
        "Mingbuloq tumani",
        "Namangan shahri",
        "Namangan tumani",
        "Norin tumani",
        "Pop tumani",
        "To'raqo'rg'on tumani",
        "Uchqo'rg'on tumani",
        "Uychi tumani",
        "Yangiqo'rgon tumani",
      ],
    ),
    //
    RegionModel(
      name: 'Navoiy viloyati',
      provinces: [
        "Navoiy shahar",
        "Navbahor tumani",
        "Zarafshon shahar",
        "Qiziltepa tumani",
        "Konimex tumani",
        "Karmana tumani",
        "Nurota tumani",
        "Tomdi tumani",
        "Uchquduq tumani",
        "Xatirchi tumani",

      ],
    ),
    //
    RegionModel(
      name: 'Qashqadaryo viloyati',
      provinces: [
        "Qashqadaryo shahar",
        "Qarshi tumani"
        "G'uzor tumani",
        "Dehqonobod tumani",
        "Qamashi tumani",
        "Kasbi tumani",
        "Kitob tumani",
        "Koson tumani",
        "Muborak tumani",
        "Mirishkor tumani",
        "Nishon tumani",
        "Chiroqchi tumani",
        "Shahrisabz tumani",
        "Yakkabog' tumani",
      ],
    ),
    //
    RegionModel(
      name: 'Samarqand viloyati',
      provinces: [
        "Bulung'ur tumani",
        "Ishtixon tumani",
        "Jomboy tumani",
        "Kattaqo'rg'on shahri",
        "Kattaqo'rg'on tumani",
        "Narpay tumani",
        "Nurobod tumani",
        "Oqdaryo tumani",
        "Past darg'om tumani",
        "Paxtachi tumani",
        "Poyariq tumani",
        "Qo'shrabot tumani",
        "Samarqand shahri",
        "Samarqand tumani",
        "Toyloq tumani",
        "Urgut tumani",
      ],
    ),
    //
    RegionModel(
      name: 'Sirdaryo viloyati',
      provinces: [
        "Boyovut tumani",
        "Guliston shahri",
        "Guliston tumani",
        "Oqoltin tumani",
        "Sardoba tumani",
        "Sayxunobod tumani",
        "Shirin shahri",
        "Sirdaryo tumani",
        "Xovos tumani",
        "Yangiyer shahri",
      ],
    ),
    //
    RegionModel(
      name: 'Surxondaryo viloyati',
      provinces: [
        "Termiz shahar",
        "Angor tumani",
        "Bandixon tumani",
        "Boysun tumani",
        "Denov tumani",
        "Jarqo'rg'on tumani",
        "Oltinsoy tumani",
        "Qiziriq tumani",
        "Qumqo'rg'on tumani",
        "Sariosiyo tumani",
        "Uzun tumani",
        "Termiz tumani",
        "Muzrobod tumani",
        "Sherobod tumani",
        "Sho'rchi tumani"
      ],
    ),

    RegionModel(
      name: 'Toshkent viloyati',
      provinces: [
        "Angren shahri",
        "Bekobod shahri",
        "Bekobod tumani",
        "Bo'ka tumani",
        "Bo'stonliq tumani",
        "Chinoz tumani",
        "Chirchiq shahri",
        "O'rta chirchiq tumani",
        "Ohangaron tumani",
        "Olmaliq shahri",
        "Oqqo'rg'on tumani",
        "Parkent tumani",
        "Piskent tumani",
        "Qibray tumani",
        "Quyi chirchiq tumani",
        "Yangiyo'l tumani",
        "Yuqori chirchiq tumani",
        "Zangiota tumani",

      ],
    ),

    RegionModel(
      name: 'Toshkent shahri',
      provinces: [
        "Bektemir tumani",
        "Chilonzor tumani",
        "Mirobod tumani",
        "Mirzo Ulug'bek tumani",
        "Olmazor tumani",
        "Sergeli tumani",
        "Shayhontohur tumani",
        "Uchtepa tumani",
        "Yakkasaroy tumani",
        "Yashnaobod tumani",
        "Yunusobod tumani",
      ],
    ),

    RegionModel(
      name: 'Xorazm viloyati',
      provinces: [
        "Bog'ot tumani",
        "Gurlan tumani",
        "Qo'shko'pir tumani",
        "Shovot tumani",
        "Urganch shahri",
        "Urganch tumani",
        "Xazorasp tumani",
        "Xiva tumani",
        "Xonqa tumani",
        "Yangiariq tumani",
        "Yangibozor tumani",
      ],
    ),
    //
    RegionModel(
      name: "Qoraqalpog'iston",
      provinces: [
        "Amudaryo tumani",
        "Beruniy tumani",
        "Chimboy tumani",
        "Ellikqala tumani",
        "Kegeyli tumani",
        "Mo'ynoq tumani",
        "Nukus shahri",
        "Nukus tumani",
        "Qonliko'l tumani",
        "Qorauzaq tumani",
        "Qung'irot tumani",
        "Shumanay tumani",
        "Taxiatosh shahri",
        "Taxtako'pir tumani",
        "To'rtko'l tumani",
        "Xo'jayli tumani",
      ],
    ),

  ];

  void onChange(String value) {
    menuController.close();
    widget.onChange(value);
    menuValue = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.unFocus;
        menuController.open();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null)
          Text(widget.title!, style: context.textStyle.productTitle,),
          const SizedBox(height: 5,),
          Container(
            height: (MenuType.main == widget.menuType) ? 30 : 50,
            decoration: (MenuType.main == widget.menuType) ? null :
            BoxDecoration(
              border: Border.all(color: context.color.lightGrey),
              borderRadius: BorderRadius.circular(5),
              color: context.color.backgroundColor,
            ),
            child: Row(
              children: [
                MenuBar(
                  style: MenuStyle(
                    elevation: const WidgetStatePropertyAll(0),
                    padding: const WidgetStatePropertyAll(EdgeInsets.zero),
                    // maximumSize: WidgetStatePropertyAll(Size(double.infinity, 30)),
                    maximumSize: const WidgetStatePropertyAll(Size(double.infinity, 30)),
                    backgroundColor: (MenuType.main == widget.menuType) ? null :
                    WidgetStatePropertyAll(context.color.backgroundColor),
                  ),
                  children: [
                    SubmenuButton(
                      controller: menuController,
                      menuChildren: regions.map((region) {
                        return SubmenuButton(
                          menuChildren: region.provinces.map((e) {
                            return TextButton(
                              onPressed: (){
                                context.unFocus;
                                switch (widget.regionMenuValueType) {
                                  case RegionMenuValueType.full:
                                    onChange('${region.name} $e');
                                    break;
                                  case RegionMenuValueType.regionFullName:
                                    onChange(region.name);
                                    break;
                                  case RegionMenuValueType.provinceFullName:
                                    onChange(e);
                                    break;
                                  case RegionMenuValueType.regionOnly:
                                    onChange(region.name.split(' ').first);
                                    break;
                                  case RegionMenuValueType.provinceOnly:
                                    onChange(e.split(' ').first);
                                    break;
                                }
                                // onChange("${region.name} $e");
                              },
                              child: Text(e, style: TextStyle(color: context.color.black),),
                            );
                          }).toList(),
                          child: Text(region.name),
                        );
                      }).toList(),
                      child: Row(
                        children: [
                          Text(menuValue),
                          if (MenuType.main == widget.menuType)
                          const Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ],
                ),
                if (MenuType.add == widget.menuType)
                  const Spacer(),
                if (MenuType.add == widget.menuType)
                  const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RegionModel {
  String name = '';
  List<String> provinces = [];
  RegionModel({required this.name, required this.provinces});
}

enum MenuType {
  main,
  add,
}

enum RegionMenuValueType {
  full,
  regionFullName,
  provinceFullName,
  regionOnly,
  provinceOnly,
}
