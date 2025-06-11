import 'package:flutter/material.dart';

class TextInstructionsScreen extends StatelessWidget {
  const TextInstructionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: const Text(
          'You can send and receive messages with the stranger from the center screen. Swipe left to activate your camera.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}