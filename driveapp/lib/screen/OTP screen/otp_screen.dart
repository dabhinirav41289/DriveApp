// ignore_for_file: unused_import, use_key_in_widget_constructors, camel_case_types, library_private_types_in_public_api, non_constant_identifier_names

import 'package:driveapp/data/firebase_auth_lphone.dart';
import 'package:driveapp/data/variable.dart';

import 'package:driveapp/screen/Login%20screen/login_screen.dart';
import 'package:driveapp/res/round_button.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:driveapp/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class otpScreen extends StatefulWidget {
  @override
  _otpScreen createState() => _otpScreen();
}

class _otpScreen extends State {
  final controller = Get.put(AppController());
  final verifys = Get.put(AppAuth());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 130,
            ),
            Image.asset('assets/images/image1.png'),
            const SizedBox(
              height: 50,
            ),
            Text(
              'otp_center_text'.tr,
              style: Appconst.loginPagecentertext,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'otp_second_text'.tr,
              textAlign: TextAlign.center,
              style: Appconst.loginPageSecondcentertext,
            ),
            Text(
              '${controller.code} ${controller.phonecontroller.value.text}',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 17, color: Color(0xff8b8cb0)),
            ),
            const SizedBox(
              height: 20,
            ),
            OtpTextField(
              onSubmit: (value) {
                controller.Codes = value;
              },
              onCodeChanged: (value) {
                controller.Codes = value;
              },
              numberOfFields: 6,
              fieldWidth: 45,
              fillColor: const Color(0xffececf4),
              filled: true,
              borderRadius: BorderRadius.circular(20),
              showCursor: false,
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Dont\'t receive OTP?',
                    style: TextStyle(fontSize: 15, color: Color(0xff8b8cb0))),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Resend',
                      style: TextStyle(fontSize: 15, color: Appconst.kcolor),
                    )),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            roundButton(
                onPress: () {
                  verifys.Verify();
                },
                buttonname: 'otp_button_text'.tr),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('New User?',
                    style: TextStyle(fontSize: 15, color: Color(0xff8b8cb0))),
                TextButton(
                    onPressed: () {
                      controller.GoToNewUser();
                    },
                    child: const Text(
                      'Registered Here',
                      style: TextStyle(fontSize: 15, color: Appconst.kcolor),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
