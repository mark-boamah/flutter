import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[100],
      child: Center(
        child: Lottie.network(
            'https://assets9.lottiefiles.com/private_files/lf30_h04isle8.json'),
      ),
    );
  }
}
