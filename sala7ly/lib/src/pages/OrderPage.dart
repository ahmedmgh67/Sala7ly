import 'package:flutter/material.dart';
import 'package:sala7ly/src/widgets/field.dart';

class OrderPage extends StatefulWidget {
  String name;
  OrderPage(this.name);
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
      body: CustomScrollView(
        slivers: <Widget>[
          Column(
            children: <Widget>[
              Field()
            ],
          )
        ],
      )
    );
  }
}

