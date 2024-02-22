import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Text("ID Card", style: TextStyle(fontSize: 30)),
        FlipCard(
          flipOnTouch: true,
          front: Container(
            margin: const EdgeInsets.all(8),
            child: Image.asset("assets/card.jpg"),
          ),
          back: Image.asset("assets/cardBack.jpg"),
        ),
      ],
    );
  }
}
