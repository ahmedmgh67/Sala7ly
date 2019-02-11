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
  //String a = OrderPage.a;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ahmed'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: DropdownButtonFormField(
                  items: <DropdownMenuItem>[
                    DropdownMenuItem(
                      value: "Addre",
                      child: Text("ahmed"),
                    )
                  ],
                  onSaved: (t){},
                ),
                margin: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
              ),
            ],
          )
        ],
      )
    );
  }

}

