
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/pages/message/pages/widgets/message_item.dart';
import 'package:kelishamiz/pages/message/view_model/message_view_model.dart';
import 'package:provider/provider.dart';

import '../data/model/message_model.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {

    final read = context.read<MessageViewModel>();
    final watch = context.watch<MessageViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Xabarlar', style: context.textTheme.titleLarge,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1/.15,
            mainAxisSpacing: 7,
          ),
          itemCount: read.messages.length,
          itemBuilder: (context, index) => MessageItem(
            model: read.messages[index],
            ),
          ),
      ),
      );
  }
}
