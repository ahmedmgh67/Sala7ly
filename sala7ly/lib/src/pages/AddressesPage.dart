import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddressesPage extends StatefulWidget {
  @override
  _AddressesPageState createState() => _AddressesPageState();
}

class _AddressesPageState extends State<AddressesPage> {
  SharedPreferences pr ;
  List<String> a ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Addresses'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: ()  {sharedPreferencesRegister();},
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context,int index){
          return Card(
            child: Text(a[index]),
          );
        },
      ),
    );
  }
  void sharedPreferencesRegister ()async{
    
    await pr.setString("Address", "Nile Street");
  }
  Future<List<String>> readPrefrances()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    a = [prefs.getString("Address")];
    return a;
  }
}