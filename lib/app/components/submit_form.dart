import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'custom_button.dart';
import 'input_item.dart';

class SubmitForm extends StatelessWidget {
  var gasController = new MoneyMaskedTextController();
  var alcController = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm(
      {@required this.gasController,
      @required this.alcController,
      @required this.busy,
      @required this.submitFunc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputItem(
          text: 'Gasolina',
          ctrl: gasController,
        ),
        InputItem(
          text: 'Alcool',
          ctrl: alcController,
        ),
        CustomButton(
          busy: busy,
          invert: false,
          func: submitFunc,
          text: 'Calcular',
        )
      ],
    );
  }
}
