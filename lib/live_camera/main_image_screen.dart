import 'package:flutter/material.dart';


import 'chat_box_widget.dart';

class MainImageScreen extends StatelessWidget {
  const MainImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Image.asset('assets/images/logo.jpg', fit: BoxFit.cover),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: ChatBox(),
        )
      ],
    );
  }
}