import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  bool Active;
  SlideDots(this.Active);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: Active ? 12 : 8,
      width: Active ? 12 : 8,
      decoration: BoxDecoration(
        color: Active ? Color.fromRGBO(63, 61, 82, 1) : Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
