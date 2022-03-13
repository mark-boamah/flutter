import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
              animation: true,
              animationDuration: 1000,
              radius: 150,
              lineWidth: 40,
              percent: 0.4,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade100,
              circularStrokeCap: CircularStrokeCap.round,
              center: const Text(
                '40%',
                style: TextStyle(fontSize: 50),
              ),
            ),
            LinearPercentIndicator(
              animation: true,
              animationDuration: 1000,
              lineHeight: 40,
              percent: 1,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade100,
              barRadius: const Radius.circular(50),
            ),
          ],
        ),
      ),
    );
  }
}
