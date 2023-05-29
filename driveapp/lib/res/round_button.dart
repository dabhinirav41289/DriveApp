// ignore_for_file: must_be_immutable, camel_case_types, prefer_typing_uninitialized_variables

import 'package:driveapp/const.dart';
import 'package:flutter/material.dart';

class roundButton extends StatelessWidget {
  VoidCallback onPress;
  var buttonname;
  roundButton({super.key, required this.onPress, required this.buttonname});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: MediaQuery.of(context).size.height * .07,
        width: MediaQuery.of(context).size.width * .52,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            color: Appconst.kcolor),
        child: Center(
          child: Text(
            buttonname,
            style: Appconst.buttontext,
          ),
        ),
      ),
    );
  }
}
