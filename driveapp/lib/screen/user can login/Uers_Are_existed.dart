// ignore_for_file: file_names, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:driveapp/data/variable.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserLogin extends StatefulWidget {
  @override
  _UserLogin createState() => _UserLogin();
}

class _UserLogin extends State {
  final controller = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          dropdownMenuTheme: const DropdownMenuThemeData(
              inputDecorationTheme: InputDecorationTheme(
                  constraints: BoxConstraints(maxHeight: 50),
                  contentPadding: EdgeInsets.all(10))),
          inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: const Color(0xffececf4),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: Colors.grey.shade200)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: Colors.grey.shade200))),
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              controller.GoToMainScreen();
            } else {
              controller.GoTologin();
            }
            return const Center(
                child: CircularProgressIndicator(
              strokeWidth: 2,
            ));
          },
        ));
  }
}
