import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Raleway',
  fontWeight: FontWeight.bold,
  fontSize: 60.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Raleway',
  fontSize: 20.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Raleway',
);

const kConditionTextStyle = TextStyle(
  fontSize: 70.0,
);

const kTextFieldInputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    hintText: 'Inserir nome da cidade',
    hintStyle: TextStyle(
      color: Colors.grey,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide.none,
    ));
