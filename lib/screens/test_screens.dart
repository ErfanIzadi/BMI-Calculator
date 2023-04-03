import 'package:bmi_calculator_app/constants/constants.dart';
import 'package:flutter/material.dart';

class TapTest extends StatefulWidget {
  const TapTest({super.key});

  @override
  State<TapTest> createState() => _TapTestState();
}

class _TapTestState extends State<TapTest> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text(
                  '$counter',
                  style: TextStyle(fontSize: 40, color: black),
                ),
                InkWell(
                  splashColor: orangeBackground,
                  onTap: () {
                    setState(() {
                      counter = counter + 1;
                    });
                  },
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    child: Text('click'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
