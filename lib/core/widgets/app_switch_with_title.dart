
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';

class AppSwitchWithTitle extends StatefulWidget {
  const AppSwitchWithTitle({super.key, required this.title});
  final String title;

  @override
  State<AppSwitchWithTitle> createState() => _AppSwitchWithTitleState();
}

class _AppSwitchWithTitleState extends State<AppSwitchWithTitle> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.title, style: context.textStyle.productTitle,),
        AnimatedToggleSwitch.dual(
        current: isSwitched ? 0 : 1,
          onChanged:(value) {
          isSwitched = !isSwitched;
          setState(() {});
          },
          style: ToggleStyle(
            backgroundColor: isSwitched ? context.color.grey : context.colorScheme.primary,
            borderColor: isSwitched ? context.color.grey : context.colorScheme.primary,
            indicatorColor: context.color.white,
          ),
          iconBuilder: (value) => Center(child: Icon(CupertinoIcons.pause, color: context.color.grey.withOpacity(.2), size: 15,)),
          indicatorSize:const Size(20, 20),
          height: 23,
          borderWidth: 1,
          spacing: 15,
          first: 0,
          second: 1,
        ),
      ],
    );
  }
}
