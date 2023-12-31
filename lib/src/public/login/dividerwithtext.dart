import 'package:flutter/material.dart';


class DividerText extends StatelessWidget {
  const DividerText({
    required String text,
    Key? key, 
  }) : _text=text, super(key: key);

  final String _text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: const Divider(
              color: Colors.black,
              height: 36,
            )),
      ),
       Text(_text),
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: const Divider(
              color: Colors.black,
              height: 36,
            )),
      ),
    ]);
  }
}
