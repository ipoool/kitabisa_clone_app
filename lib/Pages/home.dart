import 'package:flutter/material.dart';
import 'package:kitabisa_clone_app/Components/box_timeline.dart';
import 'package:kitabisa_clone_app/Components/slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  List<Map> listTimeline = [
    {
      "title": "Bantu Pak Lie Melawan Kanker Paru-Paru",
      "author": "Fulan bin Fulan",
      "total": 120000.0,
      "imageURL":
          "https://img.kitabisa.cc/size/664x357/506535a6-9447-4658-a000-9c9349201601.jpg"
    },
    {
      "title": "Bantu 300 Yatim Dhuafa Lombok Bangun Masjid",
      "author": "Fulan bin Fulan",
      "total": 120000.0,
      "imageURL":
          "https://img.kitabisa.cc/size/664x357/bdd3e667-e8b2-48c7-bafc-e7a5b5fa222c.jpg"
    },
    {
      "title": "Beasiswa Afgan untuk Anak-Anak Indonesia",
      "author": "Fulan bin Fulan",
      "total": 120000.0,
      "imageURL":
          "https://img.kitabisa.cc/size/664x357/0fefa71b-9e4e-44d0-ac92-299a0d0a7e58.jpg"
    },
    {
      "title": "Bantu Pak Lie Melawan Kanker Paru-Paru",
      "author": "Fulan bin Fulan",
      "total": 120000.0,
      "imageURL":
          "https://img.kitabisa.cc/size/664x357/506535a6-9447-4658-a000-9c9349201601.jpg"
    },
    {
      "title": "Bantu 300 Yatim Dhuafa Lombok Bangun Masjid",
      "author": "Fulan bin Fulan",
      "total": 120000.0,
      "imageURL":
          "https://img.kitabisa.cc/size/664x357/bdd3e667-e8b2-48c7-bafc-e7a5b5fa222c.jpg"
    },
    {
      "title": "Beasiswa Afgan untuk Anak-Anak Indonesia",
      "author": "Fulan bin Fulan",
      "total": 120000.0,
      "imageURL":
          "https://img.kitabisa.cc/size/664x357/0fefa71b-9e4e-44d0-ac92-299a0d0a7e58.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f3f4),
      appBar: AppBar(
        backgroundColor: Color(0xFF00aeef),
        title: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              padding:
                  EdgeInsets.only(top: 5.0, right: 8.0, bottom: 5.0, left: 8.0),
              color: Color(0xFF1bbaf5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Cari yang ingin kamu bantu",
                    style: TextStyle(fontSize: 12.0),
                  ),
                  Icon(Icons.search)
                ],
              ),
            )),
        leading: Image.network(
            "https://assets.kitabisa.com/images/logo-icon-small.png"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.dehaze),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(
                top: 40.0, left: 16.0, right: 16.0, bottom: 20.0),
            child: Text(
              "Setiap Hari, Ribuan Orang Galang Dana Untuk Hal yang Mereka Perjuangkan di Kitabisa",
              style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              color: Color(0xFFda636b),
              onPressed: () {},
              child: Text("Galang Dana", style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 24.0),
              child: RaisedButton(
                color: Color(0xFF25d366),
                padding: EdgeInsets.symmetric(vertical: 10.0),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      "images/whatsapp.svg",
                      width: 20.0,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      "Tanya Galang Dana Media",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 18.0),
            child: Text("Sebarkan Kebaikan Setiap Hari",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
          ),
          Container(
            // padding: EdgeInsets.only(bottom: 18.0),
            color: Colors.white,
            child: SliderBox(),
          ),
          Container(
            margin: EdgeInsets.only(top: 18.0),
            padding: EdgeInsets.only(
                top: 20.0, left: 16.0, right: 16.0, bottom: 18.0),
            color: Colors.white,
            child: Text(
              "Bantu Siapa Hari ini?",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          ...listTimeline.map((item) {
            return BoxTimeline(
                title: item["title"],
                author: item["author"],
                imageURL: item["imageURL"],
                total: item["total"]);
          }).toList()
        ],
      ),
    );
  }
}
