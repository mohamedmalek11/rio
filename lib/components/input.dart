import 'package:flutter/material.dart';

inputComponent(hintText, labelText, maxLength, inputType) {
  return TextField(
    decoration: InputDecoration(
      counterStyle: TextStyle(
        height: double.minPositive,
      ),
      counterText: "",
      floatingLabelBehavior: FloatingLabelBehavior.never,
      filled: true,
      fillColor: Colors.white38,
      focusColor: Colors.white38,
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(50),
          gapPadding: 10),
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey[800]),
      labelText: labelText,
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white38, width: 1.0),
          borderRadius: BorderRadius.circular(50),
          gapPadding: 10),
    ),
    autocorrect: false,
    cursorColor: Colors.white,
    maxLength: maxLength,
    keyboardType: inputType,
  );
}
