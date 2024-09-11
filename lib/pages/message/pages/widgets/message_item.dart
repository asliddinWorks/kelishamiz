import 'package:flutter/cupertino.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/pages/message/data/model/message_model.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({super.key, required this.model});
  final MessageModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 44,
              width: 44,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(model.image, fit: BoxFit.cover,),
            ),
            10.wGap,
            SizedBox(
              width: MediaQuery.sizeOf(context).width * .5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(model.name, style: context.textTheme.titleMedium!.copyWith(fontSize: 16, height: 1, ),),
                  Text(model.lastMessage, style: context.textTheme.bodyMedium!.copyWith(color: context.color.grey, overflow: TextOverflow.ellipsis),),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: context.color.black,
                  shape: BoxShape.circle,
                ),
              ),
              Text(model.createTime, style: context.textTheme.bodySmall!.copyWith(color: context.color.grey)),
            ],
          ),
        )
      ],
    );
  }
}