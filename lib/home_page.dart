import 'package:flutter/material.dart';
import 'package:ig_flutter_ui/bubble_story.dart';
import 'package:ig_flutter_ui/user_post.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const List<String> users = [
    'Anisa',
    'Budi',
    'Citra',
    'Dedi',
    'Eka',
    'Fajar',
    'Gita',
    'Hadi',
    'Indah',
    'Joko',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: false,
        actions: [
          Icon(Icons.add_box_outlined, size: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(Icons.favorite_border, size: 30),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(Icons.send_outlined, size: 30),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: users.length,
              itemBuilder: (context, index) {
                return BubbleStory(
                  name: users[index],
                  isMe: index == 0 ? true : false,
                  isLive: index == 1 ? true : false,
                );
              },
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return UserPost(name: users[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
