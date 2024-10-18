
class FillModel{
  String tariffName;
  int day;
  int price;
  double offset1 = 0;
  double offset2 = 0;
  List<bool> selection = List.generate(3, (index) => false);

  FillModel({required this.tariffName, required this.day, required this.price});
}