
class ProductModel {
  String? title;
  String? description;
  String? price;
  String? date;
  String? location;
  String? image;


  ProductModel({this.title, this.description, this.price, this.date, this.location, this.image});


  ProductModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    price = json['price'];
    date = json['date'];
    location = json['location'];
    image = json['image'];
  }


  Map<String, dynamic> get toJson => {
    'title': title,
    'description': description,
    'price': price,
    'date': date,
    'location': location,
    'image': image,
  };
}