import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'carousel_slider_list.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
];

final List<CorouselSliderBtn> imgLists = [
  CorouselSliderBtn(
    image: "assets/image/i1.png",
    color1: Color(0xfff7bca8),
    color2: Color(0xffed6b4e),
  ),
  CorouselSliderBtn(
    image: "assets/image/i2.png",
    color1: Colors.blue,
    color2: Colors.blueAccent,
  ),
];

class CarouselSliderStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            items: imgLists
                .map(
                  (item) => CorouselSliderBtn(
                    image: item.image,
                    color1: item.color1,
                    color2: item.color2,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.25,
              enlargeCenterPage: true,
            ),
          ),
        ],
      ),
    );
  }
}
