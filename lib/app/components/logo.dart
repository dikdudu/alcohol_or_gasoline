import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),
        Image.asset(
          'assets/images/logo2.png',
          height: 100,
        ),
        SizedBox(height: 30),
        Text(
          'Alcool ou gasolina',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
