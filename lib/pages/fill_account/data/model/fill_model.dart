
class FillModel{
  String tariffName;
  int day;
  int price;
  List <bool> selection = List.generate(3, (index) => false);

  FillModel({required this.tariffName, required this.day, required this.price});
}