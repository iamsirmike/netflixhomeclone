import 'package:flutter/material.dart';

InputDecoration textInputDecoration() {
  return InputDecoration(
    labelStyle: TextStyle(color: Colors.black54),
    labelText: 'Email address',
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Color(0xffFFFFFF),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Color(0xffFFFFFF),
      ),
    ),
  );
}
