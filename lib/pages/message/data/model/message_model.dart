
class MessageModel {
  final String image;
  final String name;
  final String lastMessage;
  final String createTime;
  final int? id;

  MessageModel({required this.lastMessage, required this.createTime, required this.image, required this.name, this.id});
}