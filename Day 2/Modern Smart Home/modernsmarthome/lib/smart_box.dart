import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartBox extends StatelessWidget {
  final String imagepath;
  final String name;
  final bool poweron;
  void Function(bool)? onChanged;

  SmartBox(
      {super.key,
      required this.imagepath,
      required this.name,
      required this.poweron,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
            color: poweron ? Colors.black : Color.fromARGB(44, 164, 167, 189),
            borderRadius: BorderRadius.circular(24)),
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              imagepath,
              height: 65,
              color: poweron ? Colors.white : Colors.grey.shade700,
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: poweron ? Colors.white : Colors.black),
                  ),
                )),
                Transform.rotate(
                  angle: pi / 2,
                  child: CupertinoSwitch(value: poweron, onChanged: onChanged),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
