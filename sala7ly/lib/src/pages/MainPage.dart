import'package:flutter/material.dart';
import 'package:http/http.dart' as http ;
import 'dart:convert';
import 'OrderPage.dart';
import 'dart:async';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  void initState(){
    super.initState();
    this.res();
  }

  List respon;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.yellow,actions: <Widget>[IconButton(icon: Icon(Icons.access_alarm),onPressed: () => res(),)],),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("Addresses"),
              )
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: respon == null ? 0 : respon.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: Text(respon[index]["title"]),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => OrderPage(respon[index]['title'], null)))
            );
          },
        ) 
      )
    );
  }
  void res () async{
    var resp = await http.get("https://jsonplaceholder.typicode.com/posts");
    var respo = resp.body;
    respon = jsonDecode(respo);
    print(respon);
    setState(() {
      
    });
  }
}

/*ListView(
          children: <Widget>[
            Container(
              child: Placeholder(),
              width: 60.0,
              height: 200.0,
            ),
            ListTile(
              title: Text("Ahmed"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Ahmed"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Ahmed"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Ahmed"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Ahmed"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Ahmed"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Ahmed"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Ahmed"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Ahmed"),
              onTap: (){},
            ),
          ],
)*/