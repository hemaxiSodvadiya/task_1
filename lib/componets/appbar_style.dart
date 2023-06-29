import 'package:flutter/material.dart';
import 'package:task_1/model/global_textstyle.dart';

class AppBarStyle extends StatefulWidget {
  const AppBarStyle({Key? key}) : super(key: key);

  @override
  State<AppBarStyle> createState() => _AppBarStyleState();
}

class _AppBarStyleState extends State<AppBarStyle> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(10),
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Your Sports",
            style: TextStyles.appbarTextStyleBlack,
          ),
          Container(
            //f7bca8
            //ed6b4e
            height: 35,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: const LinearGradient(
                colors: [
                  Color(0xfff7bca8),
                  Color(0xffed6b4e),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                Text(
                  "Create",
                  style: TextStyles.appbarTextStyleWhite,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
