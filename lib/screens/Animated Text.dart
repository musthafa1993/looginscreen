import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTexts extends StatefulWidget {
  const AnimatedTexts({Key? key}) : super(key: key);

  @override
  State<AnimatedTexts> createState() => _AnimatedTextssState();
}

class _AnimatedTextssState extends State<AnimatedTexts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: (
      SafeArea(child: Center(
        child: AnimatedTextKit(
          animatedTexts: [TyperAnimatedText(
              "WELCOME TO LUMINAR TECNOLAB",
              textStyle: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 2000),
            ),
          ],
          totalRepeatCount: 4,
          pause: const Duration(milliseconds: 1000),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
      )
      )
      ),
    );
  }
}
