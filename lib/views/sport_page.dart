import 'package:flutter/material.dart';
import 'package:task_1/componets/details_page_bottom_bar.dart';
import 'package:task_1/componets/listview_style.dart';
import 'package:task_1/views/detail_page.dart';

class SportPage extends StatefulWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        separatorBuilder: (_, __) {
          return const SizedBox(
            height: 20,
          );
        },
        padding: const EdgeInsets.only(top: 20, bottom: 40),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/detailPageBottomBar',
                  arguments: 'Sports Details');
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => DetailPageBottomBar()));
            },
            child: ListViewStyles(
              title: "Sports Name",
            ),
          );
        },
      ),
    );
  }
}
