import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String textTitle;

  const MyButton({Key? key, required this.textTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 40,
      color: Color(0xFFF5A78B), //2 Use Color class with hexadecimal value
      child: Center(
        child: Text(
          textTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
