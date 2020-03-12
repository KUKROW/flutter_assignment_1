import 'package:flutter/cupertino.dart';

class TextOutput extends StatelessWidget {
  final String textMessage;
  TextOutput(this.textMessage);

  @override
  Widget build(BuildContext context) {
    return Text(
      textMessage,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );
  }
}
