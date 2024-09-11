
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/core/widgets/app_button.dart';
import 'package:kelishamiz/router/router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              80.hGap,
              Column(
                children: [
                  Text('Login', style: context.textTheme.titleLarge),
                  70.hGap,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Login', style: context.textTheme.titleSmall),
                      const TextField(),
                    ],
                  ),
                  20.hGap,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Parol', style: context.textTheme.titleSmall),
                      const TextField(),
                    ],
                  ),
                  5.hGap,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: (){},
                        child: Text('Parolni unutdingizmi?', style: context.textTheme.bodyMedium!.copyWith(
                            color: context.colorScheme.primary, fontSize: 12)),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  AppButton(
                    width: MediaQuery.sizeOf(context).width,
                    height: 50,
                    onPressed: (){
                      context.go(RouteNames.main);
                    },
                    text: 'Kirish',
                  ),
                  35.hGap,
                  Text('Ro’yhatdan o’tmaganmisiz?', style: context.textTheme.bodyMedium),
                  GestureDetector(
                    onTap: () => context.push(RouteNames.signUp),
                    child: Text('Ro’yxatdan o’tish', style: context.textTheme.bodyMedium!.copyWith(
                        color: context.colorScheme.primary)),
                  ),
                  30.hGap
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
