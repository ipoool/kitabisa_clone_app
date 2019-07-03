import 'package:flutter/material.dart';

class BoxDompet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
      child: Card(
        elevation: 3,
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 0,
                child: Icon(Icons.account_balance_wallet, size: 38.0),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Rp 9.999.999",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0)),
                      SizedBox(height: 5.0),
                      Text("Dompet Kebaikan",
                          style:
                              TextStyle(fontSize: 12.0, color: Colors.black45))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: Container(
                  padding: EdgeInsets.only(right: 10.0),
                  child: OutlineButton(
                    child:
                        Text("Isi Saldo", style: TextStyle(color: Colors.blue)),
                    onPressed: () {},
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
