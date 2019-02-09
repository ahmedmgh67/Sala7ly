import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: "Where You live"
      ),
    );
  }
}