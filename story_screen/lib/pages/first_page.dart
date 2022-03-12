import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // create variable
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _currentValue.toInt().toString(),
            style: const TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),
          ),
          Slider(
            value: _currentValue,
            min: 0,
            max: 10,
            divisions: 5,
            label: 'How are you feeling?',
            activeColor: Colors.blue[700],
            inactiveColor: Colors.blue[300],
            onChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
