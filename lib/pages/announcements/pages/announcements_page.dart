
import 'package:flutter/material.dart';
import 'package:kelishamiz/pages/announcements/pages/widgets/announcements_item.dart';
import 'package:kelishamiz/pages/announcements/view_model/announcements_view_model.dart';
import 'package:provider/provider.dart';

class AnnouncementsPage extends StatefulWidget {
  const AnnouncementsPage({super.key});

  @override
  State<AnnouncementsPage> createState() => _AnnouncementsPageState();
}

class _AnnouncementsPageState extends State<AnnouncementsPage> {
  @override
  Widget build(BuildContext context) {
    final read = context.read<AnnouncementsViewModel>();
    // final watch = context.watch<AnnouncementsViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("E'lonlar"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1/.44,
            mainAxisSpacing: 7,
          ),
          itemCount: read.announcements.length,
          itemBuilder: (context, index) => AnnouncementsItem(
            model: read.announcements[index],
          ),
        ),
      ),
    );
  }
}
