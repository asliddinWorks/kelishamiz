
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/widgets/app_button.dart';

class PriceTypeButton extends StatefulWidget {
  const PriceTypeButton({super.key, required this.onPressed});

  final void Function(int index) onPressed;

  @override
  State<PriceTypeButton> createState() => _PriceTypeButtonState();
}

class _PriceTypeButtonState extends State<PriceTypeButton> {

  int currentIndex = 0;
  void onTap(int index) {
    switch (index) {
      case 0: {
        setState(() {
          currentIndex = 0;
          widget.onPressed(0);
        });
        break;
      }
      case 1: {
        setState(() {
          currentIndex = 1;
          widget.onPressed(1);
        });
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Valyuta turi',
          style: context.textTheme.titleSmall,
        ),
        Row(
          children: [
            Expanded(
              child: AppButton(
                onPressed: (){
                  onTap(0);
                },
                appButtonType: (currentIndex == 0) ?
                AppButtonType.filled :
                AppButtonType.outlined ,
                text: 'UZS',

              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: AppButton(
                onPressed: (){
                  onTap(1);
                },
                appButtonType: (currentIndex == 1) ?
                AppButtonType.filled :
                AppButtonType.outlined ,
                text: 'USD',

              ),
            ),

          ],
        ),
      ],
    );
  }
}
