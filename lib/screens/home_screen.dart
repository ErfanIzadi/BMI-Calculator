import 'package:bmi_calculator_app/widgets/background_shape_left.dart';
import 'package:bmi_calculator_app/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weithController = TextEditingController();
  final heightController = TextEditingController();

  double resultBMI = 0;
  String resultText = '';
  double widthGood = 100.0;
  double widthBad = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          '  تو چنده ؟ BMI',
          style: TextStyle(
              color: black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.white, Colors.yellow, Colors.white])),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 135.0,
                  child: TextField(
                    controller: weithController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: orangeBackground),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'وزن',
                      hintStyle: TextStyle(
                        color: orangeBackground.withOpacity(0.45),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 135.0,
                  child: TextField(
                    controller: heightController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: orangeBackground),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'قد به متر',
                      hintStyle: TextStyle(
                        color: orangeBackground.withOpacity(0.45),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            InkWell(
              onTap: () {
                // example: 168 --> 168.0
                final weight = double.parse(weithController.text);
                final height = double.parse(heightController.text);
                setState(
                  () {
                    resultBMI = weight / (height * height);
                    if (resultBMI >= 25.0 && resultBMI < 30) {
                      widthBad = 250.0;
                      widthGood = 45.0;
                      resultText = 'شما اضافه وزن دارید';
                    } else if (resultBMI >= 18.5 && resultBMI <= 25.0) {
                      widthBad = 45.0;
                      widthGood = 250.0;
                      resultText = 'وزن شما ایده آل است';
                    } else if (resultBMI > 30) {
                      widthBad = 250.0;
                      widthGood = 6.0;
                      resultText = 'وزن شما در وضعیت بحرانی قرار دارد';
                    } else if (resultBMI < 18.5) {
                      widthBad = 15.0;
                      widthGood = 15.0;
                      resultText = 'وزن شما کمتر از حد نرمال است';
                    }
                    ;
                  },
                );
              },
              child: Text(
                '! محاسبه کن',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              '${resultBMI.toStringAsFixed(2)}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 65),
            ),
            Text(
              '$resultText',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: orangeBackground),
            ),
            SizedBox(height: 85.0),
            RightShape(
              width: widthBad,
            ),
            SizedBox(height: 16),
            LeftShape(
              width: widthGood,
            ),
          ],
        ),
      ),
    );
  }
}
