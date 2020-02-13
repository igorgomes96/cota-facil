import 'package:flutter/material.dart';

import 'screens/welcome.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final Color primaryColor = Color(0xff03da9d);
  final Color accentColor = Color(0xff333333);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cota Fácil',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: primaryColor,
          accentColor: accentColor,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(color: Colors.white),
          fontFamily: 'Rubik',
          textTheme: TextTheme(
            display2:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
            display1: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            button: TextStyle(color: Colors.white),
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: primaryColor,
            textTheme: ButtonTextTheme.normal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            contentPadding: EdgeInsets.all(8),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(style: BorderStyle.none),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        home: Welcome(),
      );
  }
}
