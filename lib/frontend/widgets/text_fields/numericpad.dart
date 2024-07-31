import 'package:flutter/material.dart';

class NumericPad extends StatelessWidget {
  final Function(int) onNumberSelected;

  NumericPad({required this.onNumberSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildNumber(1),
                buildNumber(2),
                buildNumber(3),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildNumber(4),
                buildNumber(5),
                buildNumber(6),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildNumber(7),
                buildNumber(8),
                buildNumber(9),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildEmptySpace(),
                buildNumber(0),
                buildBackspace(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNumber(int number) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onNumberSelected(number);
        },
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Center(
              child: Text(
                number.toString(),
                style: const TextStyle(
                  fontSize: 36,
                  color: Color(0xFF1F1F1F),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBackspace() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onNumberSelected(-1);
        },
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.backspace_outlined,
                size: 28,
                color: Color.fromARGB(255, 160, 160, 160),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEmptySpace() {
    return Expanded(
      child: Container(),
    );
  }
}