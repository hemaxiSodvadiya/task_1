import 'package:flutter/material.dart';
import 'package:slide_switcher/slide_switcher.dart';
import 'package:task_1/componets/appbar_style.dart';
import 'package:task_1/componets/tabbar_style.dart';
import 'package:task_1/views/matches_page.dart';
import 'package:task_1/views/sport_page.dart';

import '../componets/carousel_slider_style.dart';
import '../model/global_textstyle.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int switcherIndex1 = 0;
  late PageController _pageController;
  int selectedIndex = 0;
  bool _colorful = false;
  int _selectedTag = 0;

  void changeTab(int index) {
    setState(() {
      _selectedTag = index;
    });
  }

  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // shrinkWrap: true,
        children: [
          SizedBox(height: 10),
          AppBarStyle(),
          SizedBox(height: 10),
          CarouselSliderStyle(),
          CustomTabView(
            index: _selectedTag,
            changeTab: changeTab,
          ),
          _selectedTag == 0
              ? const SportPage()
              : _selectedTag == 1
                  ? const MatchePage()
                  : _selectedTag == 2
                      ? const SportPage()
                      : _selectedTag == 3
                          ? const MatchePage()
                          : const SportPage(),
        ],
      ),
    );
  }
}

/*
Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideSwitcher(
                  children: [
                    Text(
                      'Sports',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: switcherIndex1 == 0
                            ? FontWeight.w500
                            : FontWeight.w400,
                        color: switcherIndex1 == 0 ? Colors.white : Colors.grey,
                      ),
                    ),
                    Text(
                      'Matches',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: switcherIndex1 == 1
                            ? FontWeight.w500
                            : FontWeight.w400,
                        color: switcherIndex1 == 1 ? Colors.white : Colors.grey,
                      ),
                    ),
                    Text(
                      'Upcoming',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: switcherIndex1 == 2
                            ? FontWeight.w500
                            : FontWeight.w400,
                        color: switcherIndex1 == 2 ? Colors.white : Colors.grey,
                      ),
                    ),
                    Text(
                      'Live',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: switcherIndex1 == 3
                            ? FontWeight.w500
                            : FontWeight.w400,
                        color: switcherIndex1 == 3 ? Colors.white : Colors.grey,
                      ),
                    ),
                  ],
                  direction: Axis.horizontal,
                  containerColor: Color(0xfff7bca8).withOpacity(0.35),
                  slidersGradients: const [
                    LinearGradient(
                      colors: [
                        Color(0xfff7bca8),
                        Color(0xffed6b4e),
                      ],
                    ),
                    LinearGradient(
                      colors: [
                        Color(0xfff7bca8),
                        Color(0xffed6b4e),
                      ],
                    ),
                  ],
                  // slidersColors: [
                  //   Color(0xfff7bca8),
                  //   Color(0xffed6b4e),
                  // ],

                  //  slidersBorder: Border.all(color: Colors.white, width: 2),
                  containerBorder:
                      Border.all(color: Color(0xffed6b4e), width: 1),
                  containerHeight: 55,
                  containerWight: 450,
                  indents: 5,
                  onSelect: (index) {
                    setState(() {});
                  }
                  // onSelect: (int index) => setState(() => switcherIndex1 = index),
                  ),
            ],
          ),
 */
/*Container(
            width: width,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                colors: [
                  Color(0xfff7bca8),
                  Color(0xffed6b4e),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 38,
                        width: 100,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white54,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("⚽"),
                            Text(
                              " Football",
                              style: TextStyles.carouselTextStyle1,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Football",
                        style: TextStyles.carouselTextStyle2,
                      ),
                      Text(
                        "Champion League",
                        style: TextStyles.carouselTextStyle2,
                      ),
                      Text(
                        "Celebration",
                        style: TextStyles.carouselTextStyle2,
                      ),
                      Text(
                        "Tomorrow, 06:30PM",
                        style: TextStyles.appbarTextStyleWhite,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -10,
                  right: -50,
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 300,
                    child: Image.asset("assets/image/i1.png"),
                  ),
                ),
              ],
            ),
          ),*/
