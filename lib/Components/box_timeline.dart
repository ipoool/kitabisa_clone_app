import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class BoxTimeline extends StatelessWidget {
  final String title;
  final String author;
  final double total;
  final String imageURL;
  const BoxTimeline(
      {Key key, this.title, this.author, this.total, this.imageURL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Image.network(this.imageURL),
              width: 150.0,
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(this.title,
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5.0),
                  Text(this.author, style: TextStyle(fontSize: 11.0)),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                    child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.start,
                      width: 170.0,
                      lineHeight: 5.0,
                      percent: 0.9,
                      progressColor: Colors.blue,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Terkumpul", style: TextStyle(fontSize: 11.0)),
                      Text("Sisa Hari", style: TextStyle(fontSize: 11.0))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Rp. ${this.total.toString()}",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("0", style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(height: 40.0)
                ],
              ),
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
