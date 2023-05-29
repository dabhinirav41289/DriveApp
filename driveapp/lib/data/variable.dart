// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'dart:async';

import 'package:country_code_picker_x/country_code_picker_x.dart';
import 'package:driveapp/Routes/Routes_name.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  //get phone number for user
  Rx<TextEditingController> phonecontroller = TextEditingController().obs;

  //get licease for user
  Rx<TextEditingController> licecontroller = TextEditingController().obs;

  //get user name
  Rx<TextEditingController> nameController = TextEditingController().obs;

  //get user address
  Rx<TextEditingController> AddressController = TextEditingController().obs;

//authcation for user
  final FirebaseAuth auth = FirebaseAuth.instance;

  //user delivery lists
  RxList deliveryList = [].obs;

//for user country code
  CountryCode? code;
  var Codes;
  RxBool isshow = true.obs;
  RxBool circlu = true.obs;
  String verify = '';

//for navigation
  GoTologin() {
    Timer(Duration.zero, () => Get.toNamed(routes.Login_Screen));
  }

  GoToOTP() {
    Get.toNamed(routes.OTP_Screen);
  }

  GoToNewUser() {
    Get.toNamed(routes.New_User);
  }

  GoToUserLogin() {
    Timer(const Duration(seconds: 4), () => Get.toNamed(routes.User_Login));
  }

  GoToMainScreen() {
    Timer(Duration.zero, () => Get.toNamed(routes.Main_Screen));
  }

  GoToProfile() {
    Get.toNamed(routes.User_Profile);
  }

  GoToDeliveryScreen() {
    Get.toNamed(routes.Delivery_Screen);
  }

  GoToScannerScreen() {
    Get.toNamed(routes.Scanner_Screen);
  }

  GoToDeliveryReport() {
    Get.toNamed(routes.Delivery_Report);
  }

  GoToDetailsPage() {
    Get.toNamed(routes.Details_Page);
  }

  GoToOrderDetailsPage() {
    Get.toNamed(routes.Order_details);
  }

  GoToDeliveryLocationa() {
    Get.toNamed(routes.Delivery_Location);
  }
}
