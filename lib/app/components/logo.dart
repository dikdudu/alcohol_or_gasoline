import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60),
        Image.asset(
          'assets/images/icon.png',
          height: 80,
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
