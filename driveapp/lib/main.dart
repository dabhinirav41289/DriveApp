import 'package:driveapp/Routes/Routes.dart';
import 'package:driveapp/res/firebase_options.dart';
import 'package:driveapp/localations/localations.dart';
import 'package:driveapp/screen/Welcome%20screen/Welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
      home: WelcomeScreen(),
      locale: const Locale('en', 'US'),
      translations: Languages(),
      fallbackLocale: const Locale('en', 'US'),
      getPages: AppRoutes.appRoutes(),
      debugShowCheckedModeBanner: false,
    );
  }
}
