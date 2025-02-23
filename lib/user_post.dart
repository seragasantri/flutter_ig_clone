import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserPost extends StatelessWidget {
  const UserPost({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/100?=$name',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          height: 300,
          child: Image.network(
            'https://picsum.photos/600/300?random=$name',
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/d_favorite_Icons.svg'),
                  // const Icon(Icons.favorite_border),
                  const SizedBox(width: 8),
                  SvgPicture.asset('assets/icons/d_message_2_Icons.svg'),
                  // const Icon(Icons.chat_bubble_outline),
                  const SizedBox(width: 8),
                  SvgPicture.asset('assets/icons/d_send_2_Icons.svg'),
                  // const Icon(Icons.send_outlined),
                ],
              ),
            ),
            SvgPicture.asset('assets/icons/d_bookmark_Icons.svg'),
            // const Icon(Icons.bookmark_border),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            children: [
              Text('Liked by '),
              Text('rozay', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(' and '),
              Text('others ', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
            text: const TextSpan(
              // style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'kepala_Sekolah',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' Ayo anak anak masuk kelas, sudah waktunya belajar.. ',
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Text(
            'View all comments',
            // style: TextStyle(color: Colors.black54),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Text(
            '17 hours ago',
            style: TextStyle(
              // color: Colors.black54,
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}
