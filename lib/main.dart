import 'package:flutter/material.dart';
import 'package:task_1/componets/details_page_bottom_bar.dart';
import 'package:task_1/componets/tabbar_style.dart';
import 'package:task_1/componets/try1.dart';
import 'package:task_1/views/detail_page.dart';
import 'package:task_1/views/home_page.dart';

import 'componets/dashboard.dart';
import 'componets/canvas_page.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: MyHomePage(),
        initialRoute: '/myHomePage',
        routes: {
          '/myHomePage': (context) => MyHomePage(),
          '/homePage': (context) => HomePage(),
          // '/detailPage': (context) => DetailPage(),
          '/detailPageBottomBar': (context) => DetailPageBottomBar(),
        }),
  );
}
