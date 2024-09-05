
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/router/router.dart';
import '../../constants/app_icons.dart';
import 'rectangle_icon_button.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key, required this.onTapGrid, required this.onTapFilter, required this.onTapMenu, required this.onTapSearch, required this.onChangeSearch});

  final void Function() onTapGrid;
  final void Function() onTapFilter;
  final void Function() onTapMenu;
  final void Function() onTapSearch;
  final void Function() onChangeSearch;


  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      flexibleSpace: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Logo', style: context.textTheme.bodyLarge,),
                    Row(
                      children: [
                        Text('Toshkent', style: context.textTheme.bodyMedium!.copyWith(
                          color: Colors.grey,
                        )),
                        const Icon(Icons.chevron_right, color: Colors.grey)
                      ],
                    )],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    RectangleIconButton(
                      onTap: () {},
                      child: SvgPicture.asset(AppIcons.icMenu),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: SizedBox(
                        height: 36,
                        child: TextField(
                          style: const TextStyle(
                              fontWeight: FontWeight.w500),
                          cursorColor: Colors.black54,
                          textAlignVertical: TextAlignVertical.top,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: context.color.iconBackgroundColor,
                              contentPadding: const EdgeInsets.all(5),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                                borderSide:
                                BorderSide(width: 2, color: context.color.lightGrey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                                borderSide:
                                BorderSide(width: 2, color: context.color.lightGrey),
                              ),
                              alignLabelWithHint: true,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ))),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    RectangleIconButton(
                      onTap: () {
                        context.push(RouteNames.login);
                      },
                      child: SvgPicture.asset(
                        AppIcons.icFilter,
                      ),
                    ),
                    const SizedBox(width: 5),
                    RectangleIconButton(
                      onTap: widget.onTapGrid,
                      child: SvgPicture.asset(
                        AppIcons.icGrid,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
