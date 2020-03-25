import 'package:flutter/material.dart';

ThemeData lightTheme() => new ThemeData(
    brightness: Brightness.light,
    accentColor: Colors.deepOrange,
    canvasColor: Colors.white,
    cursorColor: Colors.deepOrange,
    splashColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: _greyText(),
      focusColor: Colors.deepOrange,
      fillColor: Colors.white70,
      labelStyle: TextStyle(color: Colors.black),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(
          color: Colors.deepOrange
        )
      ),
      filled: true
    ),
    appBarTheme: AppBarTheme(
        color: Colors.white70,
        iconTheme: _greyIcon(),
        actionsIconTheme: _greyIcon(),
        textTheme: TextTheme(
            title: TextStyle(
                color: Colors.black87,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                shadows: List.from({
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15.0, // has the effect of softening the shadow
                    spreadRadius: 5.0, // has the effect of extending the shadow
                    offset: Offset(
                      5.0, // horizontal, move right 10
                      5.0, // vertical, move down 10
                    ),
                  )
                })),
            caption: TextStyle(color: Colors.deepOrange)),
        elevation: 0),
    textTheme: TextTheme(caption: TextStyle(color: Colors.deepOrange)),
    iconTheme: _greyIcon());

TextStyle _greyText() => new TextStyle(color: Colors.black54);
IconThemeData _orangeIcon() => new IconThemeData(color: Colors.deepOrange);
IconThemeData _greyIcon() => new IconThemeData(color: Colors.black87);
