
class AnnouncementsModel {
  final String image;
  final String name;
  final int price;
  final int commentCount;
  final int callCount;
  final int seenCount;
  final int likesCount;
  final int? id;

  AnnouncementsModel({required this.likesCount, required this.seenCount, required this.callCount, required this.commentCount, required this.price, required this.image, required this.name, this.id});
}