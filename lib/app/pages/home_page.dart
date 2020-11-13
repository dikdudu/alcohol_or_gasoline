import 'dart:ui';

import 'package:flutter/material.dart';
import 'components/custom_button.dart';
import 'components/input_item.dart';
import 'components/logo.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatelessWidget {
  var _gasController = new MoneyMaskedTextController();
  var _alcController = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Logo(),
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  "Compensa Utilizar alcool",
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
                  func: () {},
                  text: 'Calcular Novamente',
                )
              ],
            ),
          ),
          InputItem(text: 'Gasolina', ctrl: _gasController),
          InputItem(text: 'Alcool', ctrl: _alcController),
          CustomButton(
            busy: true,
            invert: false,
            func: () {},
            text: 'Calcular',
          )
        ],
      ),
    );
  }
}
