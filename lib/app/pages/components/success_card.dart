import 'package:flutter/material.dart';

import 'custom_button.dart';

class SuccessCard extends StatelessWidget {
  var result = "";
  Function reset;
  SuccessCard({this.result, this.reset});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          SizedBox(height: 50),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            busy: false,
            invert: true,
            func: reset,
            text: 'Calcular Novamente',
          )
        ],
      ),
    );
  }
}
