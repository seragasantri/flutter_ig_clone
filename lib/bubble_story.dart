import 'package:flutter/material.dart';

class BubbleStory extends StatelessWidget {
  const BubbleStory({
    Key? key,
    required this.name,
    required this.isMe,
    required this.isLive,
  }) : super(key: key);
  final String name;
  final bool isMe;
  final bool isLive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            alignment: isLive ? Alignment.bottomCenter : Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: isMe ? Colors.white : Colors.red,
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
              if (isMe)
                const CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.add, size: 20),
                  ),
                ),
              if (isLive)
                Container(
                  height: 16,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: const Border.fromBorderSide(
                      BorderSide(color: Colors.white),
                    ),
                  ),
                  child: const Text(
                    'LIVE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),

          Padding(padding: const EdgeInsets.only(top: 1), child: Text(name)),
        ],
      ),
    );
  }
}
