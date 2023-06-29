import 'package:flutter/material.dart';
import 'package:task_1/componets/listview_style.dart';

class MatchePage extends StatefulWidget {
  const MatchePage({Key? key}) : super(key: key);

  @override
  State<MatchePage> createState() => _MatchePageState();
}

class _MatchePageState extends State<MatchePage> {
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
                  arguments: 'Match Details');
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => DetailPageBottomBar()));
            },
            child: ListViewStyles(
              title: "Match Name",
            ),
          );
        },
      ),
    );
  }
}
