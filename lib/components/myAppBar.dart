import 'package:flutter/material.dart';

myAppBar(titleText) {
  return AppBar(
    title: Text(
      "titleText",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_right,
              size: 30,
            ),
            onPressed: () {}),
      )
    ],
    centerTitle: true,
    toolbarHeight: 70,
  );
}
