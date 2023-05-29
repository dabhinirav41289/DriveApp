// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, library_private_types_in_public_api, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_element, non_constant_identifier_names

import 'package:driveapp/const.dart';
import 'package:driveapp/data/variable.dart';
import 'package:driveapp/res/round_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';

class newUser extends StatefulWidget {
  @override
  _newUser createState() => _newUser();
}

class _newUser extends State {
  final controller = Get.put(AppController());
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
                child: ListTile(
                  title: Text(
                    'contaner_text'.tr,
                    style: Appconst.loginPagetext,
                  ),
                  subtitle: Text(
                    'contaner_second_text'.tr,
                    style: Appconst.newPagetext,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/image1.png',
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Licence Number',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Dosis VariableFon',
                            color: controller.isshow.value == true
                                ? Appconst.kcolor
                                : Color(0xff8b8cb0),
                            fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 250,
                        height: 50,
                        child: Expanded(
                          child: TextField(
                              controller: controller.licecontroller.value,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Appconst.kcolor,
                                  fontWeight: FontWeight.w500),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(14),
                                border: InputBorder.none,
                                hintText: 'textfild_hint_text'.tr,
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        'Date Of Birth',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Dosis VariableFon',
                            color: controller.isshow.value == true
                                ? Appconst.kcolor
                                : Color(0xff8b8cb0),
                            fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  DropdownDatePicker(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Appconst.kcolor,
                      size: 30,
                    ),

                    textStyle: TextStyle(
                        fontSize: 20,
                        color: Appconst.kcolor,
                        fontWeight: FontWeight.w500),

                    inputDecoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 50),
                        contentPadding: EdgeInsets.all(1),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(8))), // optional
                    // optional
                    isFormValidator: true, // optional
                    startYear: 1900, // optional
                    endYear: 2020, // optional
                    width: 5, // optional
                    selectedDay: 14, // optional
                    selectedMonth: 10, // optional
                    selectedYear: 1993, // optional
                    onChangedDay: (value) {
                      // print('onChangedDay: $value');
                    },
                    onChangedMonth: (value) {
                      // print('onChangedMonth: $value');
                    },
                    onChangedYear: (value) {
                      //print('onChangedyear: $value');
                    },
                    dayFlex: 2, // optional
                    showDay: true, // optional
                    isExpanded: true, // optional
                    hintDay: 'Day', // optional
                    hintMonth: 'Month', // optional
                    hintYear: 'Year',
                    // optional
                    hintTextStyle:
                        TextStyle(color: Appconst.kcolor), // optional
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.isshow.value,
                      replacement: Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            // or some other color
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0))),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Name',
                                  textAlign: TextAlign.left,
                                  style: Appconst.netextuser1,
                                ),
                              ],
                            ),
                            TextField(
                              controller: controller.nameController.value,
                              keyboardType: TextInputType.name,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Appconst.kcolor,
                                  fontWeight: FontWeight.w500),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(14),
                                border: InputBorder.none,
                                hintText: 'Name',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Address',
                                  textAlign: TextAlign.left,
                                  style: Appconst.netextuser1,
                                ),
                              ],
                            ),
                            TextField(
                              keyboardType: TextInputType.streetAddress,
                              controller: controller.AddressController.value,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Appconst.kcolor,
                                  fontWeight: FontWeight.w500),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(14),
                                border: InputBorder.none,
                                hintText: 'Address',
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            roundButton(
                              onPress: () {
                                controller.GoTologin();
                              },
                              buttonname: 'new_user_second_button'.tr,
                            )
                          ],
                        ),
                      ),
                      child: roundButton(
                          onPress: () {
                            controller.isshow.value = !controller.isshow.value;
                          },
                          buttonname: 'new_user_button'.tr),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Old User?',
                          style: TextStyle(
                              fontSize: 15, color: Color(0xff8b8cb0))),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'log'.tr,
                            style: Appconst.textbutton,
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
