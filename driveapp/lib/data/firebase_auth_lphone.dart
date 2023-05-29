// ignore_for_file: non_constant_identifier_names, empty_catches

import 'package:driveapp/data/variable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AppAuth extends GetxController {
  final controller = Get.put(AppController());

//for autntication for phone number
  PhoneAuth() async {
    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber:
            controller.code!.dialCode! + controller.phonecontroller.value.text,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) {
          controller.verify = verificationId;
          controller.Codes = controller.code!.dialCode!;
          controller.GoToOTP();
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      /* ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));*/
    }
  }

  Verify() async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: controller.verify, smsCode: controller.Codes);

      await controller.auth.signInWithCredential(credential);
    } catch (e) {}
  }

  SignOut() async {
    try {
      FirebaseAuth.instance.signOut();
      await controller.GoTologin();
    } catch (e) {}
  }
}
