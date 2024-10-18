
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class AddImage extends StatelessWidget {
  const AddImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: DottedBorder(
              color: context.color.grey,
              radius: const Radius.circular(10),
              borderType: BorderType.RRect,
              dashPattern: const [5],
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image_outlined, color: context.color.grey,),
                    Text('Rasm yuklash',
                      style: context.textTheme.titleMedium!.copyWith(color: context.color.grey),
                    ),
                  ],
                ),
              )
          ),
        ),
        const SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Row(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    padding: const EdgeInsets.all(5),
                    child: DottedBorder(
                      color: context.color.grey,
                      radius: const Radius.circular(10),
                      borderType: BorderType.RRect,
                      dashPattern: const [5],
                      child: const Center(child: Text('')),
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 75,
                    padding: const EdgeInsets.all(5),
                    child: DottedBorder(
                      color: context.color.grey,
                      radius: const Radius.circular(10),
                      borderType: BorderType.RRect,
                      dashPattern: const [5],
                      child: const Center(child: Text('')),
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 75,
                    padding: const EdgeInsets.all(5),
                    child: DottedBorder(
                      color: context.color.grey,
                      radius: const Radius.circular(10),
                      borderType: BorderType.RRect,
                      dashPattern: const [5],
                      child: const Center(child: Text('')),
                    ),
                  ),
                ],
              ),
              Container(
                height: 75,
                width: 75,
                padding: const EdgeInsets.all(5),
                child: DottedBorder(
                  color: context.color.grey,
                  radius: const Radius.circular(10),
                  borderType: BorderType.RRect,
                  dashPattern: const [5],
                  child: const Center(child: Icon(Icons.add))
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
