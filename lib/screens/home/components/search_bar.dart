import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: inputController,
      onSubmitted: (text) => print(text),
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
