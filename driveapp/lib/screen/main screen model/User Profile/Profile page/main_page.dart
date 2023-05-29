// ignore_for_file: use_key_in_widget_constructors, camel_case_types, library_private_types_in_public_api

import 'package:driveapp/res/Profile_detials_button.dart';
import 'package:driveapp/data/firebase_auth_lphone.dart';
import 'package:driveapp/data/variable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mainPage extends StatefulWidget {
  @override
  _mainPage createState() => _mainPage();
}

class _mainPage extends State {
  final signOut = Get.put(AppAuth());
  final controller = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_rounded),
                onPressed: () {
                  Get.back();
                },
              ),
              title: const Text(
                'My Profile',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.grey.shade300,
                      ),
                      Column(
                        children: [
                          const Text(
                            'Alex White',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Alexwhite@gmail.com',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey.shade400),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.shade300),
                              child: const Center(
                                child: Text(
                                  'Edit Profile',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // ignore: prefer_const_constructors
                  Details(
                      icon: const Icon(
                        Icons.person_3_outlined,
                        color: Colors.black54,
                        size: 25,
                      ),
                      text: 'Personal Deatils',
                      onPress: () {}),
                  Divider(
                    thickness: 1,
                    color: Colors.grey.shade400,
                  ),
                  Details(
                      icon: const Icon(
                        Icons.stacked_bar_chart_outlined,
                        color: Colors.black54,
                        size: 25,
                      ),
                      text: 'My Report',
                      onPress: () {}),
                  Divider(
                    thickness: 1,
                    color: Colors.grey.shade400,
                  ),
                  Details(
                      icon: const Icon(
                        Icons.pie_chart_outline,
                        color: Colors.black54,
                        size: 25,
                      ),
                      text: 'Delivery Repoprt',
                      onPress: () {
                        controller.GoToDeliveryReport();
                      }),
                  Divider(
                    thickness: 1,
                    color: Colors.grey.shade400,
                  ),
                  Details(
                      icon: const Icon(
                        Icons.admin_panel_settings,
                        color: Colors.black54,
                        size: 25,
                      ),
                      text: 'Account Settings',
                      onPress: () {}),
                  Divider(
                    thickness: 1,
                    color: Colors.grey.shade400,
                  ),
                  Details(
                      icon: const Icon(
                        Icons.help_center,
                        color: Colors.black54,
                        size: 25,
                      ),
                      text: 'Help Center',
                      onPress: () {}),
                  Divider(
                    thickness: 1,
                    color: Colors.grey.shade400,
                  ),
                  Details(
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.black54,
                      size: 25,
                    ),
                    text: 'Log Out',
                    onPress: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Row(
                                children: const [
                                  Text(
                                    'Signout',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                              content: const Text('Do you wanna signout?'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: const Text('Cancel')),
                                TextButton(
                                    onPressed: () {
                                      signOut.SignOut();
                                    },
                                    child: const Text('ok')),
                              ],
                            );
                          });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
