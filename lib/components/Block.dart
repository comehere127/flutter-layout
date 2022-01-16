import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  final Color color;
  final double? width;
  const Block({Key? key, required this.color, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: width,
    );
  }
}
