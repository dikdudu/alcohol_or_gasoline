import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class InputItem extends StatelessWidget {
  var text;
  var ctrl = new MoneyMaskedTextController();

  InputItem({@required this.text, @required this.ctrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 30, right: 30),
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            text,
            style: TextStyle(fontSize: 22),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: TextField(
            controller: ctrl,
            keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.white, fontSize: 25),
            decoration: InputDecoration(border: InputBorder.none),
          ),
        )
      ],
    );
  }
}
