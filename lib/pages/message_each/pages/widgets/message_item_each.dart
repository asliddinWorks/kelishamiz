
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class MessageItemEach extends StatelessWidget {
  const MessageItemEach({super.key,
    required this.isMine,
    required this.message,
  });

  final bool isMine;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: isMine ?
              Colors.blue :
              context.color.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Text(
              message,
              style: (isMine) ?
              context.textTheme.bodyLarge!.copyWith(
                color: context.color.white
              ) : context.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
