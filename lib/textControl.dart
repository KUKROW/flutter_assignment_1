import 'package:flutter/material.dart';
import './textOutput.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'This is the original message';
  void _resetText() {
    setState(() {
      _mainText = 'This message changed!!';
    });
  }

  void _resetTextAgain() {
    setState(() {
      _mainText = 'This message changed again!!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('Click me!'),
          onPressed: _resetText,
        ),
        TextOutput(_mainText),
        RaisedButton(
          child: Text('Click me!'),
          onPressed: _resetTextAgain,
        ),
      ],
    );
  }
}
