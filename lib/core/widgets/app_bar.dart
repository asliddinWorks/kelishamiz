
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/widgets/region_select_menu.dart';
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
                    RegionSelectMenu(
                      regionMenuValueType: RegionMenuValueType.provinceOnly,
                      onChange: (value) {
                        print(value);
                      },
                    ),
                    // Row(
                    //   children: [
                    //     Text('Toshkent', style: context.textTheme.bodyMedium!.copyWith(
                    //       color: Colors.grey,
                    //     )),
                    //     const Icon(Icons.chevron_right, color: Colors.grey)
                    //   ],
                    // ),
                  ],
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
                        child: GestureDetector(
                          onTap: (){
                            context.push(RouteNames.search);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: context.color.lightGrey),
                              color: context.color.backgroundColor,
                            ),
                          ),
                        )
                      ),
                    ),
                    const SizedBox(width: 5),
                    RectangleIconButton(
                      onTap: () {
                        context.push(RouteNames.filter);
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
