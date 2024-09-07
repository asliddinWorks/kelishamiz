
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/pages/fill_account/pages/widgets/fill_item.dart';
import 'package:provider/provider.dart';

import '../view_model/fill_view_model.dart';

class FillAccountPage extends StatefulWidget {
  const FillAccountPage({super.key});

  @override
  State<FillAccountPage> createState() => _FillAccountPageState();
}

class _FillAccountPageState extends State<FillAccountPage> {
  @override
  Widget build(BuildContext context) {

    final read = context.read<FillViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Hisobni to’ldirish', style: context.textTheme.titleLarge!.copyWith(fontSize: 20),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 1,
          //   childAspectRatio: 1/1,
          //   mainAxisSpacing: 7,
          // ),
          itemCount: read.tariffs.length,
          itemBuilder: (context, index) => FillItem(
            model: read.tariffs[index],
          ),
        ),
      ),
    );
  }
}
