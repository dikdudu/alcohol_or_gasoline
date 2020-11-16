import 'package:alcool_gasolina/app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "WorkSans",
        primaryColor: Color(0xFF77D1B3),
        accentColor: Color(0xFF77D1B3),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
