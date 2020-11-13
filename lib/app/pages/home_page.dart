import 'dart:ui';

import 'package:alcool_gasolina/app/components/logo.dart';
import 'package:alcool_gasolina/app/components/submit_form.dart';
import 'package:flutter/material.dart';
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
          SubmitForm(
            gasController: _gasController,
            alcController: _alcController,
            busy: false,
            submitFunc: () {},
          ),
        ],
      ),
    );
  }
}
