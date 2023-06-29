import 'package:flutter/material.dart';
import 'package:task_1/componets/dashboard.dart';
import 'package:task_1/model/global_textstyle.dart';

class ListViewStyles extends StatelessWidget {
  final String title;
  const ListViewStyles({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/image/i5.jpg"),
            ),
            title: Text(
              title,
              style: TextStyles.listviewTextStyle1,
            ),
            subtitle: Text(
              "Location",
              style: TextStyles.listviewTextStyle3,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 20,
            ),
          ),
          Container(
            height: 100,
            alignment: Alignment.center,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xfff7bca8).withOpacity(0.25),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 1,
                color: Color(0xffed6b4e),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      width: 75,
                      // alignment: FractionalOffset.center,
                      child: Stack(
                        //alignment:new Alignment(x, y)
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/image/i3.jpg"),
                          ),
                          Positioned(
                            left: 30.0,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/image/i4.jpg"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Team Name VS Team Name",
                          style: TextStyles.listviewTextStyle1,
                        ),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: " Participant ",
                                  style: TextStyles.listviewTextStyle2,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: " 2 ",
                                      style: TextStyles.listviewTextStyle1,
                                    ),
                                    TextSpan(
                                      text: "  -  ",
                                      style: TextStyles.listviewTextStyle1,
                                    ),
                                    TextSpan(
                                      text: "  Participant",
                                      style: TextStyles.listviewTextStyle2,
                                    ),
                                    TextSpan(
                                      text: " 7",
                                      style: TextStyles.listviewTextStyle1,
                                    ),
                                  ]),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 30,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xfff7bca8),
                        Color(0xffed6b4e),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 1,
          ),
        ],
      ),
    );
  }
}
