import 'package:flutter/material.dart';
import 'package:sala7ly/src/widgets/field.dart';

class OrderPage extends StatefulWidget {
  final String service;
  OrderPage(this.service);
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  //String a = OrderPage.a;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.service),
      ),
      body: ListView(
        children: <Widget>[
          Form(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: "Address",

                  ),
                  maxLines: 4,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Notes",
                    
                  ),
                  maxLines: 4,
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: (){},
            child: Text("Order ${widget.service}"),
          )
        ],
      )
    );
  }

}

