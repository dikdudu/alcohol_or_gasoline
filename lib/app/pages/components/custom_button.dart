import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  var busy = false;
  var invert;
  Function func;
  var text;

  CustomButton({
    @required this.busy,
    @required this.invert,
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            height: 50,
            margin: EdgeInsets.all(30),
            width: double.infinity,
            decoration: BoxDecoration(
              color: invert ? Theme.of(context).primaryColor : Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: FlatButton(
              onPressed: func,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  color: invert ? Colors.white : Theme.of(context).primaryColor,
                ),
              ),
            ));
  }
}
