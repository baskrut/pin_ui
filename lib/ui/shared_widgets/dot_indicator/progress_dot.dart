import 'package:flutter/material.dart';

class ProgressDot extends StatelessWidget {
  final bool isBlank;

  ProgressDot({this.isBlank});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.purple),
        color: isBlank ? Colors.white : Colors.purple,
      ),
    );
  }
}
