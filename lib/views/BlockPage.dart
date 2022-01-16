import 'package:flutter/material.dart';
import 'package:day_1/components/Block.dart';
import 'package:day_1/components/PositionedBlock.dart';

class BlockPage extends StatelessWidget {
  const BlockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: const [
                                Expanded(
                                  child: Block(color: Colors.grey),
                                ),
                                Expanded(
                                  child: Block(color: Colors.orange),
                                ),
                                Expanded(
                                  child: Block(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Block(color: Colors.lightBlue.shade300),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Block(color: Colors.pink.shade400),
                          ),
                          const Expanded(
                            child: Block(color: Colors.greenAccent),
                          ),
                          const Expanded(
                            child: Block(color: Colors.yellow),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  children: const [
                    Expanded(
                      child: Block(color: Colors.black),
                    ),
                    Expanded(
                      child: Block(color: Colors.yellow),
                    ),
                    Expanded(
                      child: Block(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          )),
          Expanded(child: Block(color: Colors.pink.shade400)),
          Container(
            child: Block(color: Colors.white),
            width: 20,
          ),
          Expanded(child: Block(color: Colors.pink.shade400)),
        ],
      ),
      const PositionedBlock(
          screenRatioW: 1 / 3, posSRBottom: 1 / 5, posSRLeft: 1 / 7),
    ]);
  }
}
