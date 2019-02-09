import 'package:flutter/material.dart';
import 'MainPage.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text("Skip for Development Purposes"),
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage())),
      ),
    );
  }
}









