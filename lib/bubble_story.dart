import 'package:flutter/material.dart';

class BubbleStory extends StatelessWidget {
  const BubbleStory({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 38,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/100?u=$name',
                ),
              ),
            ),
          ),

          Padding(padding: const EdgeInsets.only(top: 1), child: Text(name)),
        ],
      ),
    );
  }
}
