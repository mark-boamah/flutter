import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationHomePage extends StatefulWidget {
  const AnimationHomePage({Key? key}) : super(key: key);

  @override
  State<AnimationHomePage> createState() => _AnimationHomePageState();
}

class _AnimationHomePageState extends State<AnimationHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[400],
      body: Center(
        child: Lottie.network(
            'https://assets7.lottiefiles.com/packages/lf20_tijmpky4.json'),
      ),
    );
  }
}
