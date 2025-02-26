import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ig_flutter_ui/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    const HomePage(),
    const Center(child: Text('Search', style: TextStyle(fontSize: 40))),
    const Center(child: Text('Video', style: TextStyle(fontSize: 40))),
    const Center(child: Text('Shop', style: TextStyle(fontSize: 40))),
    const Center(child: Text('Account', style: TextStyle(fontSize: 40))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        iconSize: 35,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home_Icons.svg'),

            // icon: Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/d_search_Icons.svg'),
            // icon: Icon(
            //   _selectedIndex == 1 ? Icons.search : Icons.search_outlined,
            // ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/d_video_Icons.svg'),
            // icon: Icon(
            //   _selectedIndex == 2 ? Icons.add_box : Icons.add_box_outlined,
            // ),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/d_shop_Icons.svg'),
            // icon: Icon(_selectedIndex == 3 ? Icons.shop : Icons.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 13,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 12,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/1050?img=10',
                ),
              ),
            ),
            // Icon(
            //   _selectedIndex == 4 ? Icons.person : Icons.person_outlined,
            // ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
