import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  final double width;
  const LeftShape({Key? key, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: 45.0,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
              ),
              color: Colors.greenAccent[400],
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 0.0,
                    blurRadius: 2,
                    offset: Offset(3.0, 3.0)),
                BoxShadow(
                    color: Colors.grey.shade400,
                    spreadRadius: 0.0,
                    blurRadius: 3 / 2.0,
                    offset: Offset(3.0, 3.0)),
                BoxShadow(
                    color: Colors.white,
                    spreadRadius: 2.0,
                    blurRadius: 4,
                    offset: Offset(-3.0, -3.0)),
                BoxShadow(
                    color: Colors.white,
                    spreadRadius: 2.0,
                    blurRadius: 5 / 2,
                    offset: Offset(-3.0, -3.0)),
              ],
            )),
        SizedBox(width: 7),
        Text(
          'شاخص مثبت',
          style: TextStyle(
              color: Colors.greenAccent[400],
              fontWeight: FontWeight.bold,
              fontSize: 19),
        ),
      ],
    );
  }
}
