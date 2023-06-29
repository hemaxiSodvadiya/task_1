import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:task_1/views/detail_page.dart';
import 'package:task_1/views/home_page.dart';
import 'package:task_1/views/sport_page.dart';

class DetailPageBottomBar extends StatefulWidget {
  const DetailPageBottomBar({Key? key}) : super(key: key);

  @override
  _DetailPageBottomBarState createState() => _DetailPageBottomBarState();
}

class _DetailPageBottomBarState extends State<DetailPageBottomBar> {
  late PageController _pageController;
  int selectedIndex = 0;
  bool _colorful = false;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(
      selectedIndex,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOutQuad,
    );
  }

  @override
  Widget build(BuildContext context) {
    String res = ModalRoute.of(context)!.settings.arguments as String;
    List<Widget> _listOfWidget = <Widget>[
      DetailPage(
        title: res,
      ),
      DetailPage(
        title: res,
      ),
      DetailPage(
        title: res,
      ),
      DetailPage(
        title: res,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          // SafeArea(
          //     child: SwitchListTile(
          //   title: const Text('Colorful Nav bar'),
          //   value: _colorful,
          //   onChanged: (bool value) {
          //     setState(() {
          //       _colorful = !_colorful;
          //     });
          //   },
          // )),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: _listOfWidget,
            ),
          ),
        ],
      ),
      bottomNavigationBar: SlidingClippedNavBar(
        inactiveColor: Colors.black,
        backgroundColor: Colors.white,
        onButtonPressed: onButtonPressed,
        iconSize: 30,
        activeColor: Color(0xffed6b4e),
        fontSize: 20,
        selectedIndex: selectedIndex,
        barItems: <BarItem>[
          BarItem(
            icon: Icons.home,
            title: 'Home',
          ),
          BarItem(
            icon: Icons.menu,
            title: 'Menu',
          ),
          BarItem(
            icon: Icons.notification_add,
            title: 'Alert',
          ),
          BarItem(
            icon: Icons.person_outline,
            title: 'Profile',
          ),
        ],
      ),
    );
  }
}

// icon size:24 for fontAwesomeIcons
// icons size: 30 for MaterialIcons
