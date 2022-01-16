import 'package:flutter/material.dart';
import 'package:day_1/components/Block.dart';

class PositionedBlock extends StatelessWidget {
  final double screenRatioW;
  final double posSRBottom;
  final double posSRLeft;

  const PositionedBlock(
      {Key? key,
      required this.screenRatioW,
      required this.posSRBottom,
      required this.posSRLeft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size srSize = MediaQuery.of(context).size;
    return Positioned(
      width: srSize.width * screenRatioW,
      height: srSize.width * screenRatioW,
      bottom: srSize.height * posSRBottom,
      left: srSize.width * posSRLeft,
      child: Opacity(
        opacity: 0.5,
        child: Block(color: Colors.grey.shade800),
      ),
    );
  }
}
