// ignore_for_file: use_key_in_widget_constructors, camel_case_types, library_private_types_in_public_api, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:driveapp/const.dart';
import 'package:driveapp/data/firebase_auth_lphone.dart';
import 'package:driveapp/data/variable.dart';
import 'package:driveapp/res/round_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:country_code_picker_x/country_code_picker_x.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreen createState() => _loginScreen();
}

class _loginScreen extends State {
  final controll = Get.put(AppController());
  final login = Get.put(AppAuth());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .22,
              decoration: const BoxDecoration(
                  color: Appconst.kcolor,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(100))),
              child: Center(
                  child: Text(
                'log'.tr,
                style: Appconst.loginPagetext,
              )),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Image.asset('assets/images/image1.png'),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'login_center_text'.tr,
                      style: Appconst.loginPagecentertext,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      'login_second_text'.tr,
                      style: Appconst.loginPageSecondcentertext,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          height: 50,
                          decoration: BoxDecoration(
                              color: const Color(0xffececf4),
                              borderRadius: BorderRadius.circular(6)),
                          child: CountryCodePickerX(
                            padding: const EdgeInsets.all(2),
                            textStyle: const TextStyle(
                              fontSize: 16,
                              color: Appconst.kcolor,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Dosis VariableFon',
                            ),
                            onChanged: (value) {
                              controll.code = value;
                            },
                            initialSelection: 'IN',
                            showDropDownButton: true,
                            showFlag: false,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            controller: controll.phonecontroller.value,
                            keyboardType: TextInputType.number,
                            onChanged: (Value) {
                              Value = controll.phonecontroller.value.text;
                            },
                            style: const TextStyle(fontSize: 17),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(14),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              hintText: 'mobile_hint_text'.tr,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    roundButton(
                      onPress: () {
                        login.PhoneAuth();
                      },
                      buttonname: 'boutton_text'.tr,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('New User?',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff8b8cb0))),
                        TextButton(
                            onPressed: () {
                              controll.GoToNewUser();
                            },
                            child: const Text(
                              'Registered Here',
                              style: Appconst.textbutton,
                            )),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
