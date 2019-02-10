import 'package:flutter/material.dart';
import 'package:sala7ly/src/widgets/field.dart';

class OrderPage extends StatefulWidget {
  final String name;
  final String latlong;
  OrderPage(this.name,this.latlong);
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: Field("where to go"),
                margin: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
              ),
              Container(
                child: Field("where to go"),
                margin: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
              ),
              Container(
                child: Field("where to go"),
                margin: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
              ),
              Container(
                child: Field("where to go"),
                margin: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
              ),
            ],
          )
        ],
      )
    );
  }
}

