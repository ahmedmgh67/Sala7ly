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
  var url = "https://newsapi.org/v2/top-headlines?country=eg&apiKey=9f8f7acace7d4f03a72ac8c13a1712a1";
  var url2 = "http://webhose.io/filterWebContent?token=35c2259b-6f5f-43c0-9fa5-f4c21cfbdd21&format=json&sort=crawled&q=thread.country%3AEG%20(site_type%3Adiscussions)";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.yellow,actions: <Widget>[IconButton(icon: Icon(Icons.access_alarm),onPressed: () => res(),)],),
        drawer: Drawer(),
        body: ListView.builder(
          itemCount: respon == null ? 0 : respon.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: Text(respon[index]["title"]),
              onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){return MaterialApp(home: OrderPage(respon[index]['title']),);}));},
            );
          },
        ) 
      )
    );
  }
  void res () async{
    var resp = await http.get(
      "https://jsonplaceholder.typicode.com/posts"
       /*headers: {
         //"accept":"application/json"
       }*/
      );
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