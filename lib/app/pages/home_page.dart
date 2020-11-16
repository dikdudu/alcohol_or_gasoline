import 'dart:ui';

import 'package:alcool_gasolina/app/components/logo.dart';
import 'package:alcool_gasolina/app/components/submit_form.dart';
import 'package:alcool_gasolina/app/components/success_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Color(0xFF77D1B3);
  var _gasController = new MoneyMaskedTextController();
  var _alcController = new MoneyMaskedTextController();
  var _completed = false;
  var _busy = false;
  var _resultText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Logo(),
          AnimatedContainer(
            decoration: BoxDecoration(
              color: _color,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
            ),
            height: MediaQuery.of(context).size.height * 0.72,
            duration: Duration(milliseconds: 1200),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Alcool ou gasolina',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                _completed
                    ? SuccessCard(
                        result: _resultText,
                        reset: reset,
                      )
                    : SubmitForm(
                        gasController: _gasController,
                        alcController: _alcController,
                        busy: _busy,
                        submitFunc: calculate,
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future calculate() {
    double alc =
        double.parse(_alcController.text.replaceAll(new RegExp(r'[,.]'), '')) /
            100;
    double gas =
        double.parse(_gasController.text.replaceAll(new RegExp(r'[,.]'), '')) /
            100;
    double res = alc / gas;

    setState(() {
      _color = Colors.blue;
      _completed = false;
      _busy = true;
    });

    return new Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (res >= 0.7) {
          _resultText = "Compensa usar Gasolina";
        } else {
          _resultText = "Compensa usa Alcool";
        }

        _completed = true;
        _busy = false;
      });
    });
  }

  Function reset() {
    setState(() {
      _alcController = new MoneyMaskedTextController();
      _gasController = new MoneyMaskedTextController();

      _completed = false;
      _busy = false;
      _color = Color(0xFF77D1B3);
    });
  }
}
