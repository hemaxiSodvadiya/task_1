import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

const String _TITLE = 'DottedLine Demo';

class Try1 extends StatefulWidget {
  @override
  Try1State createState() => Try1State();
}

class Try1State extends State<Try1> {
  @override
  Widget build(BuildContext context) {
    final space = SizedBox(height: 50);
    return Scaffold(
      appBar: AppBar(title: Text(_TITLE)),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            space,
            Text("Default"),
            DottedLine(),
            space,
            Text("Dash length changed"),
            DottedLine(
              dashLength: 40,
              direction: Axis.vertical,
            ),
            space,
            Text("Dash gap length changed"),
            DottedLine(dashLength: 30, dashGapLength: 30),
            space,
            Text("Line thickness changed"),
            DottedLine(
              dashLength: 30,
              dashGapLength: 30,
              lineThickness: 30,
            ),
            space,
            Text("Dash radius changed"),
            DottedLine(
              dashLength: 30,
              dashGapLength: 30,
              lineThickness: 30,
              dashRadius: 16,
            ),
            space,
            Text("Dash and dash gap color changed"),
            DottedLine(
              dashLength: 30,
              dashGapLength: 30,
              lineThickness: 2,
              dashColor: Colors.blue,
              dashGapColor: Colors.red,
            ),
            space,
            Text("Line direction and line length changed"),
            DottedLine(
              dashLength: 10,
              dashGapLength: 10,
              lineThickness: 1,
              dashColor: Colors.black,
              dashGapColor: Colors.transparent,
              direction: Axis.vertical,
              lineLength: 150,
            ),
            space,
            Text("Dash gradient changed"),
            DottedLine(
              dashGradient: [
                Colors.red,
                Colors.blue,
              ],
              dashLength: 10,
              lineThickness: 30,
            ),
            space,
            Text("Dash gradient and dash gap gradient changed"),
            DottedLine(
              dashGradient: [
                Colors.red,
                Colors.red.withAlpha(0),
              ],
              dashGapGradient: [
                Colors.blue,
                Colors.blue.withAlpha(0),
              ],
              dashLength: 10,
              dashGapLength: 10,
              lineThickness: 30,
            ),
            space,
          ],
        ),
      ),
    );
  }
}
