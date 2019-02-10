import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final String Hint;
  Field(this.Hint); 
  /*const Field({
    String Hint;
    Key key,
  }) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: Hint
      ),
    );
  }
}