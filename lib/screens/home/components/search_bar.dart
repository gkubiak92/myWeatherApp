import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: 'Enter localization',
        labelStyle: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
