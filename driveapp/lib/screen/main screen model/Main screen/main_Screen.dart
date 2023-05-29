// ignore_for_file: file_names, use_key_in_widget_constructors, library_private_types_in_public_api, sized_box_for_whitespace

import 'package:driveapp/const.dart';
import 'package:driveapp/data/variable.dart';
import 'package:driveapp/res/main_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State {
  final controller = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: Colors.grey.shade300,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const CircleAvatar(
                      radius: 30,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'company_name'.tr,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  RichText(
                      text: const TextSpan(
                          text: 'Hello,',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          children: [
                        TextSpan(
                          text: 'Alex White',
                          style: TextStyle(
                            fontSize: 30,
                            textBaseline: TextBaseline.alphabetic,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ])),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                mainButton(
                    onPress: () {
                      controller.GoToScannerScreen();
                    },
                    icon: const Icon(
                      Icons.qr_code_scanner,
                      size: 60,
                      color: Appconst.kcolor,
                    ),
                    title: 'first_box'.tr),
                mainButton(
                    onPress: () {
                      controller.GoToDeliveryLocationa();
                    },
                    icon: const Icon(
                      Icons.delivery_dining,
                      size: 60,
                      color: Appconst.kcolor,
                    ),
                    title: 'second_box'.tr),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                mainButton(
                    onPress: () {
                      controller.GoToDeliveryScreen();
                    },
                    icon: const Icon(
                      Icons.store_mall_directory,
                      size: 60,
                      color: Appconst.kcolor,
                    ),
                    title: 'third_box'.tr),
                mainButton(
                    onPress: () {
                      controller.GoToProfile();
                    },
                    icon: const Icon(
                      Icons.person_2_rounded,
                      size: 60,
                      color: Appconst.kcolor,
                    ),
                    title: 'four_box'.tr)
              ],
            )
          ],
        ),
      )),
    );
  }
}
