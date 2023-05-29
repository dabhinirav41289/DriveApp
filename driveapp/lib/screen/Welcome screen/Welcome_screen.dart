// ignore_for_file: file_names, use_key_in_widget_constructors, library_private_types_in_public_api, must_call_super, annotate_overrides

import 'package:driveapp/const.dart';
import 'package:driveapp/data/variable.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreen createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State {
  final controller = Get.put(AppController());
  void initState() {
    controller.GoToUserLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .23,
                width: MediaQuery.of(context).size.width * .5,
                decoration: const BoxDecoration(
                    color: Appconst.kcolor,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(180))),
              ),
            ],
          ),
          const Center(
            child: Text(
              'Logo',
              style: Appconst.welcometext,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .23,
                width: MediaQuery.of(context).size.width * .5,
                decoration: const BoxDecoration(
                    color: Appconst.kcolor,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(180))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
