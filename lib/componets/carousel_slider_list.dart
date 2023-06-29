import 'package:flutter/material.dart';
import 'package:task_1/model/global_textstyle.dart';

class CorouselSliderBtn extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String image;
  const CorouselSliderBtn({
    Key? key,
    required this.image,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 35,
                  width: 90,
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
                        "Football",
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
              height: 200,
              child: Image.asset(image),
            ),
          ),
        ],
      ),
    );
  }
}
