
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';

import 'widgets/message_item_each.dart';

class MessageEachPage extends StatefulWidget {
  const MessageEachPage({super.key});

  @override
  State<MessageEachPage> createState() => _MessageEachPageState();
}

class _MessageEachPageState extends State<MessageEachPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Abdulla'),
        actions: [
          const CircleAvatar(
            child: Icon(Icons.person),
          ).padding(const EdgeInsets.all(5))
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          MessageItemEach(
            isMine: true,
            message: 'Salom',
          ),
          MessageItemEach(
            isMine: false,
            message: 'Yaxshimisiz',
          ),
          MessageItemEach(
            isMine: true,
            message: 'Raxmat',
          ),
          MessageItemEach(
            isMine: true,
            message: 'Sizga qanday yordam bera olaman',
          ),
          MessageItemEach(
            isMine: false,
            message: "Menga qo'ng'iroq qila olasizmi?",
          ),
          MessageItemEach(
            isMine: false,
            message: "Iltimos",
          ),
      
        ],
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: const BoxDecoration(
          // color: Colors.red
        ),
        child: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Habar yozish',
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.photo_outlined),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(CupertinoIcons.paperplane),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
