import 'package:flutter/material.dart';
import 'package:kitabisa_clone_app/Utilities/map.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderBox extends StatefulWidget {
  SliderBox({Key key}) : super(key: key);
  _SliderBoxState createState() => _SliderBoxState();
}

class _SliderBoxState extends State<SliderBox> {
  int _current = 0;

  List listSliders = [
    "https://project-web-donor.s3.ap-southeast-1.amazonaws.com/public/juliasembuh.jpg",
    "https://project-web-donor.s3.ap-southeast-1.amazonaws.com/public/komediuntukkebaikan.jpg",
    "https://project-web-donor.s3.ap-southeast-1.amazonaws.com/public/kerupukikhsan.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
            height: 200.0,
            items: listSliders.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.white),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(image, fit: BoxFit.fill),
                      ));
                },
              );
            }).toList()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(
            listSliders,
            (index, url) {
              return Container(
                width: _current == index ? 18.0 : 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(40.0),
                    color: _current == index
                        ? Color(0xff00aeef)
                        : Color.fromRGBO(0, 0, 0, 0.4)),
              );
            },
          ),
        ),
      ],
    );
  }
}
