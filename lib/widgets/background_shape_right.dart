import 'package:flutter/material.dart';

class RightShape extends StatelessWidget {
  final double width;
  const RightShape({Key? key, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'شاخص منفی',
          style: TextStyle(
              color: Colors.redAccent[400],
              fontWeight: FontWeight.bold,
              fontSize: 19),
        ),
        SizedBox(width: 7),
        Container(
            height: 45.0,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
              ),
              color: Colors.redAccent[400],
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
      ],
    );
  }
}
