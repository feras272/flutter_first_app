import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 23.0,
        color: Colors.black,
        //backgroundColor: Colors.blueAccent[100],
        fontStyle: FontStyle.italic,
        letterSpacing: 4,
        wordSpacing: 2,
        //height: -10,
        shadows: [
          Shadow(
            color: Colors.amber,
            offset: Offset(0, 8),
            blurRadius: 2,
          ),
          Shadow(
            color: Colors.red,
            offset: Offset(4, 16),
            blurRadius: 4,
          ),
          Shadow(
            color: Colors.blue,
            offset: Offset(8, 24),
            blurRadius: 8,
          ),
        ],
        //decoration: TextDecoration.combine(decorations)
      ),
    );
  }
}