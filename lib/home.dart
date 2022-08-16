import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

import 'tabs/home_tab.dart';
import 'tabs/notifications_tab.dart';
import 'tabs/discover_tab.dart';
import 'tabs/profile_tab.dart';
import 'tabs/upload_tab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    DiscoverTab(),
    UploadTab(),
    NotificationsTab(),
    ProfileTab()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        iconSize: 24,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff387ADF),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              color:
                  _selectedIndex == 0 ? const Color(0xff387ADF) : Colors.black,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Iconsax.search_normal),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: const Color(0xff387ADF), width: 1),
                  color: const Color(0xffCBEDFA)),
              child: const Icon(
                Iconsax.add,
                color: Color(0xff387ADF),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/notification.svg",
              color:
                  _selectedIndex == 3 ? const Color(0xff387ADF) : Colors.black,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Iconsax.profile_circle),
            label: '',
          ),
        ],
      ),
    );
  }
}
