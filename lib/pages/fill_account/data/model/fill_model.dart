
class FillModel{
  String tariffName;
  int day;
  int price;
  List<bool> selection = List.generate(3, (index) => false);
  double count = 0.0;

  FillModel({required this.tariffName, required this.day, required this.price});
}