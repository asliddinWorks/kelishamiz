
import 'package:flutter/cupertino.dart';

class SignUpViewModel extends ChangeNotifier {

  List<bool> rulesSelection = [];

  List<String> rules = [
    "1 Ushbu Shartnomada quyidagi atamalar quyidagi ma'nolarga ega: Veb-sayt - ma'muriyati Pudratchining zimmasiga yuklangan veb-sayti; Pudratchi -  veb-saytining ma'muriyati (moderator); foydalanuvchi - ushbu Shartnoma shartlarini qabul qilgan va Pudratchining xizmatlaridan foydalanadigan har qanday qobiliyatli jismoniy yoki yuridik shaxs; E'lon - foydalanuvchining cheksiz ko'p miqdordagi boshqa foydalanuvchilarga fuqarolik-huquqiy bitim tuzish bo'yicha ommaviy taklifi (taklifi) (tovarlarni sotib olish / sotish, ijaraga berish, xizmatlar ko'rsatish va hk)",
    "2 Ushbu Shartnomada quyidagi atamalar quyidagi ma'nolarga ega: Veb-sayt - ma'muriyati Pudratchining zimmasiga yuklangan veb-sayti; Pudratchi -  veb-saytining ma'muriyati (moderator); foydalanuvchi - ushbu Shartnoma shartlarini qabul qilgan va Pudratchining xizmatlaridan foydalanadigan har qanday qobiliyatli jismoniy yoki yuridik shaxs; E'lon - foydalanuvchining cheksiz ko'p miqdordagi boshqa foydalanuvchilarga fuqarolik-huquqiy bitim tuzish bo'yicha ommaviy taklifi (taklifi) (tovarlarni sotib olish / sotish, ijaraga berish, xizmatlar ko'rsatish va hk)",
    "3 Ushbu Shartnomada quyidagi atamalar quyidagi ma'nolarga ega: Veb-sayt - ma'muriyati Pudratchining zimmasiga yuklangan veb-sayti; Pudratchi -  veb-saytining ma'muriyati (moderator); foydalanuvchi - ushbu Shartnoma shartlarini qabul qilgan va Pudratchining xizmatlaridan foydalanadigan har qanday qobiliyatli jismoniy yoki yuridik shaxs; E'lon - foydalanuvchining cheksiz ko'p miqdordagi boshqa foydalanuvchilarga fuqarolik-huquqiy bitim tuzish bo'yicha ommaviy taklifi (taklifi) (tovarlarni sotib olish / sotish, ijaraga berish, xizmatlar ko'rsatish va hk)",
    "4 Ushbu Shartnomada quyidagi atamalar quyidagi ma'nolarga ega: Veb-sayt - ma'muriyati Pudratchining zimmasiga yuklangan veb-sayti; Pudratchi -  veb-saytining ma'muriyati (moderator); foydalanuvchi - ushbu Shartnoma shartlarini qabul qilgan va Pudratchining xizmatlaridan foydalanadigan har qanday qobiliyatli jismoniy yoki yuridik shaxs; E'lon - foydalanuvchining cheksiz ko'p miqdordagi boshqa foydalanuvchilarga fuqarolik-huquqiy bitim tuzish bo'yicha ommaviy taklifi (taklifi) (tovarlarni sotib olish / sotish, ijaraga berish, xizmatlar ko'rsatish va hk)",
    "5 Ushbu Shartnomada quyidagi atamalar quyidagi ma'nolarga ega: Veb-sayt - ma'muriyati Pudratchining zimmasiga yuklangan veb-sayti; Pudratchi -  veb-saytining ma'muriyati (moderator); foydalanuvchi - ushbu Shartnoma shartlarini qabul qilgan va Pudratchining xizmatlaridan foydalanadigan har qanday qobiliyatli jismoniy yoki yuridik shaxs; E'lon - foydalanuvchining cheksiz ko'p miqdordagi boshqa foydalanuvchilarga fuqarolik-huquqiy bitim tuzish bo'yicha ommaviy taklifi (taklifi) (tovarlarni sotib olish / sotish, ijaraga berish, xizmatlar ko'rsatish va hk)",
    "6 Ushbu Shartnomada quyidagi atamalar quyidagi ma'nolarga ega: Veb-sayt - ma'muriyati Pudratchining zimmasiga yuklangan veb-sayti; Pudratchi -  veb-saytining ma'muriyati (moderator); foydalanuvchi - ushbu Shartnoma shartlarini qabul qilgan va Pudratchining xizmatlaridan foydalanadigan har qanday qobiliyatli jismoniy yoki yuridik shaxs; E'lon - foydalanuvchining cheksiz ko'p miqdordagi boshqa foydalanuvchilarga fuqarolik-huquqiy bitim tuzish bo'yicha ommaviy taklifi (taklifi) (tovarlarni sotib olish / sotish, ijaraga berish, xizmatlar ko'rsatish va hk)",
    "7 Ushbu Shartnomada quyidagi atamalar quyidagi ma'nolarga ega: Veb-sayt - ma'muriyati Pudratchining zimmasiga yuklangan veb-sayti; Pudratchi -  veb-saytining ma'muriyati (moderator); foydalanuvchi - ushbu Shartnoma shartlarini qabul qilgan va Pudratchining xizmatlaridan foydalanadigan har qanday qobiliyatli jismoniy yoki yuridik shaxs; E'lon - foydalanuvchining cheksiz ko'p miqdordagi boshqa foydalanuvchilarga fuqarolik-huquqiy bitim tuzish bo'yicha ommaviy taklifi (taklifi) (tovarlarni sotib olish / sotish, ijaraga berish, xizmatlar ko'rsatish va hk)",

  ];

  List<String> rulesCount = [
    "1. Umumiy qoidalar",
    "2. Saytdan foydalanish shartlari",
    "3. Pullik xizmatlar. To'lov.",
    "4. Saytda e'lonlarni joylashtirish.",
    "5. Pudratchining va foydalanuvchining huquqlari va majburiyatlari qoidalar",
    "6. Mas'uliyat",
    "7. Shartnomaning amal qilish muddati"
    ];

  bool isActiveButton = false;
  bool isPulse = false;
  bool isChecked = false;
  void onTapCheckBox() {
    isChecked = !isChecked;
    notifyListeners();
  }

  // void onTapPulse() {
  //   isPulse = !isPulse;
  //   notifyListeners();
  // }

  void onTapButton(String value) {
    isActiveButton = value.length == 6;
    notifyListeners();
  }

  void initialize() {
    rulesSelection = List.generate(7, (index) => false);
    notifyListeners();
  }

  int rulesIndex = 0;
  void onTapRules(int index) {
    rulesIndex = index;
    // rulesSelection = List.generate(7, (index) => false);
    rulesSelection[index] = !rulesSelection[index];
    notifyListeners();
  }
}