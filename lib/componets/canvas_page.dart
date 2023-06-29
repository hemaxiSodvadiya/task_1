import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;

import 'package:task_1/model/global_textstyle.dart';

class CanvasPage extends StatefulWidget {
  const CanvasPage({Key? key}) : super(key: key);

  @override
  State<CanvasPage> createState() => _CanvasPageState();
}

class _CanvasPageState extends State<CanvasPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: CustomPaint(
            size: Size(
                width,
                (width * 1.7142857142857142)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
        ),
        SizedBox(
          // padding: EdgeInsets.all(10),
          height: 600,
          //color: Colors.transparent,
          // alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Location",
                style: TextStyles.carouselTextStyle2,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/image/i4.jpg"),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "2 - ",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 48,
                          fontWeight: FontWeight.w900,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " 3 ",
                            style: GoogleFonts.roboto(
                              color: Color(0xffed6b4e),
                              fontSize: 48,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ]),
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/image/i5.jpg"),
                  ),
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Team Name",
                    style: TextStyles.listviewTextStyle1,
                  ),
                  Text(
                    "Score",
                    style: GoogleFonts.roboto(
                      color: Color(0xffed6b4e),
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "Team Name",
                    style: TextStyles.listviewTextStyle1,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        "List of Participant",
                        style: GoogleFonts.roboto(
                          color: Color(0xffed6b4e),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "1 Name",
                        style: TextStyles.listviewTextStyle4,
                      ),
                      Text(
                        "2 Name",
                        style: TextStyles.listviewTextStyle4,
                      ),
                      Text(
                        "3 Name",
                        style: TextStyles.listviewTextStyle4,
                      ),
                      Text(
                        "4 Name",
                        style: TextStyles.listviewTextStyle4,
                      ),
                      Text(
                        "5 Name",
                        style: TextStyles.listviewTextStyle4,
                      ),
                    ],
                  ),
                  DottedLine(
                    dashLength: 10,
                    dashGapLength: 5,
                    lineThickness: 1,
                    dashColor: Colors.grey.shade700,
                    dashGapColor: Colors.transparent,
                    direction: Axis.vertical,
                    lineLength: 120,
                  ),
                  Column(
                    children: [
                      Text(
                        "List of Participant",
                        style: GoogleFonts.roboto(
                          color: Color(0xffed6b4e),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "1 Name",
                        style: TextStyles.listviewTextStyle4,
                      ),
                      Text(
                        "2 Name",
                        style: TextStyles.listviewTextStyle4,
                      ),
                      Text(
                        "3 Name",
                        style: TextStyles.listviewTextStyle4,
                      ),
                      Text(
                        "4 Name",
                        style: TextStyles.listviewTextStyle4,
                      ),
                      Text(
                        "5 Name",
                        style: TextStyles.listviewTextStyle4,
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Assists",
                style: TextStyles.listviewTextStyle5,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("assets/image/i4.jpg"),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Assistant Name",
                        style: TextStyles.listviewTextStyle4,
                      ),
                    ],
                  ),
                  DottedLine(
                    dashLength: 10,
                    dashGapLength: 5,
                    lineThickness: 1,
                    dashColor: Colors.grey.shade700,
                    dashGapColor: Colors.transparent,
                    direction: Axis.vertical,
                    lineLength: 60,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("assets/image/i4.jpg"),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Assistant Name",
                        style: TextStyles.listviewTextStyle4,
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Referee",
                style: TextStyles.listviewTextStyle5,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage("assets/image/i4.jpg"),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Assistant Name",
                    style: TextStyles.listviewTextStyle4,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Day & Date",
                        style: TextStyles.listviewTextStyle5,
                      ),
                      SizedBox(height: 10),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 35,
                            width: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Color(0xffed6b4e),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              "  Fri24thFeb, 2023",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 100.0,
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xfff7bca8),
                                      Color(0xffed6b4e),
                                    ],
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.black),
                              child: Icon(Icons.date_range),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Time",
                        style: TextStyles.listviewTextStyle5,
                      ),
                      SizedBox(height: 10),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 35,
                            width: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Color(0xffed6b4e),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              "  2:00PM to 5:00PM",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 100.0,
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xfff7bca8),
                                      Color(0xffed6b4e),
                                    ],
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.black),
                              child: Icon(Icons.access_time_outlined),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Color(0XFFececec)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2528571, size.height * 0.0833333);
    path_0.lineTo(size.width * 0.3214286, size.height * 0.0416667);
    path_0.lineTo(size.width * 0.6814286, size.height * 0.0416667);
    path_0.lineTo(size.width * 0.7528571, size.height * 0.0825000);
    path_0.lineTo(size.width * 0.8900000, size.height * 0.0825000);
    path_0.lineTo(size.width * 0.9642857, size.height * 0.1250000);
    path_0.lineTo(size.width * 0.9642857, size.height * 0.9150000);
    path_0.lineTo(size.width * 0.8985714, size.height * 0.9583333);
    path_0.lineTo(size.width * 0.1128571, size.height * 0.9600000);
    path_0.lineTo(size.width * 0.0357143, size.height * 0.9166667);
    path_0.lineTo(size.width * 0.0357143, size.height * 0.1250000);
    path_0.lineTo(size.width * 0.1100000, size.height * 0.0833333);
    path_0.lineTo(size.width * 0.2528571, size.height * 0.0833333);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = Color(0XFFececec)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.06
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
