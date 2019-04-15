import 'package:flutter/material.dart';
import 'package:sala7ly/src/widgets/field.dart';
import 'package:http/http.dart' as http;

class OrderPage extends StatefulWidget {
  final String service;
  OrderPage(this.service);
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  //String a = OrderPage.a;
  String address = "";
  String notes = "";
  String phone = "";
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
                    labelText: "Phone Number",
                  ),
                  maxLines: 4,
                  onChanged: (a) => phone = a,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Address",
                  ),
                  maxLines: 4,
                  onChanged: (a) => address = a,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Notes",
                  ),
                  maxLines: 4,
                  onChanged: (a) => notes = a,
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: (){},
            child: Text("Order ${widget.service} Now"),
          )
        ],
      )
    );
  }

  void submit () async {
    /*var reqs = http.post(
      "http",
      body:{
        "address" : address,
        "notes" : notes,
        "phone" : phone
      }
    );
  }*/
  print("$address  $notes  $phone");
  }
  
}