import 'package:flutter/material.dart';
import 'package:youtube_clone/Widgets/CustomAppBar.dart';
import 'package:youtube_clone/Widgets/Widgets.dart';
import 'package:youtube_clone/data.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          Customappbar(),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            final video = videos[index];
            return Videocard(video: video);
          }))
        ],
      ),
    );
  }
}
