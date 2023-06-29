import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_1/componets/canvas_page.dart';
import 'package:task_1/componets/dashboard.dart';
import 'package:task_1/model/global_textstyle.dart';
import 'package:task_1/views/home_page.dart';
import 'package:task_1/views/sport_page.dart';

class DetailPage extends StatefulWidget {
  final String title;
  const DetailPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: GoogleFonts.roboto(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
        children: [
          CanvasPage(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Other Match",
                style: TextStyles.appbarTextStyleBlack,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Text(
                    "See all",
                    style: TextStyles.listviewTextStyle3,
                  )),
            ],
          ),
          SportPage(),
        ],
      ),
    );
  }
}
