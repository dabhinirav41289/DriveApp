// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

class mainButton extends StatelessWidget {
  VoidCallback onPress;
  Icon icon;
  String title;
  mainButton({
    required this.onPress,
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        height: 158,
        width: 150,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            icon,
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
