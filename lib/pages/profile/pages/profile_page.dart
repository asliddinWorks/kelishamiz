
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/core/widgets/app_bar.dart';
import 'package:kelishamiz/pages/main/view_model/main_view_model.dart';
import 'package:kelishamiz/pages/profile/pages/widgets/profile_item.dart';
import 'package:provider/provider.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/fake_image.dart';
import '../../../router/router.dart';
import '../view_model/profile_view_model.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {

    final read = context.read<ProfileViewModel>();
    // final watch = context.watch<ProfileViewModel>();

    return  Scaffold(
      appBar: AppBar(
        title: Text('Profil',style: context.textTheme.titleLarge,),
      ),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1/.57,
                child: Container(
                  decoration: BoxDecoration(
                      color: context.color.lightGrey,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      10.hGap,
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(FakeImages.user),
                      ),
                      Column(
                        children: [
                          Text('Imomov Sunnat', style: context.textTheme.titleMedium!.copyWith(height: 1)),
                          10.hGap,
                          Text('(2016 yildan buyon)', style: context.textTheme.bodySmall!.copyWith(color: context.color.grey)),
                          5.hGap,
                          Text('Toshkent shahri', style: context.textTheme.bodySmall!.copyWith(color: context.color.grey)),
                          10.hGap,
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              25.hGap,
              AspectRatio(
                aspectRatio: 1/.8,
                child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 5,
                    crossAxisCount: 3,
                    childAspectRatio: 1/1
                  ),
                  children: [
                    ProfileItem(
                      onTap: () {
                        context.push(RouteNames.announcements,);
                      },
                      title: 'Mening e’lonlarim',
                      icon: SvgPicture.asset(AppIcons.icProfileAnnouncement),
                      color: Colors.blueAccent,
                    ),
                    ProfileItem(
                      onTap: () {
                        context.push(RouteNames.message,);
                      },
                      title: 'Habarlarim',
                      icon: SvgPicture.asset(AppIcons.icProfileNews),
                      color: Colors.orangeAccent,
                    ),
                    ProfileItem(
                      onTap: () {
                        context.go(RouteNames.main,);
                        context.read<MainViewModel>().onTapNavBar(1);
                      },
                      title: 'Saqlanganlar',
                      icon: SvgPicture.asset(AppIcons.icProfileSaved),
                      color: Colors.redAccent,
                    ),
                    ProfileItem(
                      onTap: () {
                        context.push(RouteNames.message,);
                      },
                      title: 'Qidiruvlar',
                      icon: SvgPicture.asset(AppIcons.icProfileSearch),
                      color: const Color(0xff757790),
                    ),
                    ProfileItem(
                      onTap: () {
                        context.push(RouteNames.paymentTable,);
                      },
                      title: 'Mening hisobim',
                      icon: SvgPicture.asset(AppIcons.icProfileAccount),
                      color: Colors.brown.shade300,
                    ),
                    ProfileItem(
                      onTap: () {
                        context.push(RouteNames.message,);
                      },
                      title: 'Sozlamalar',
                      icon: SvgPicture.asset(AppIcons.icProfileSettings),
                      color: Colors.brown.shade300,
                    ),
                  ],
                  // itemCount: 6,
                  // itemBuilder: (context, index) => ProfileItem(
                  //   onTap: (){
                  //     context.push(read.page[index]);
                  //   },
                  //   title: read.title[index],
                  //   icon: read.icon[index],
                  //   color: read.color[index],
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
