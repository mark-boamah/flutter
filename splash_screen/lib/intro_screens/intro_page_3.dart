import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: Center(
        child: Lottie.network(
            'https://assets8.lottiefiles.com/packages/lf20_h9rxcjpi.json'),
      ),
    );
  }
}
