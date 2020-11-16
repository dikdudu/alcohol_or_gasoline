import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Image.asset(
          'assets/images/icon.png',
          height: 100,
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
