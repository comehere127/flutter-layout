import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  final Color color;
  const Block({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
