// ignore_for_file: file_names

import 'package:driveapp/Routes/Routes_name.dart';
import 'package:driveapp/screen/Login%20screen/login_screen.dart';
import 'package:driveapp/screen/main%20screen%20model/Main%20screen/main_Screen.dart';
import 'package:driveapp/screen/New%20user%20screen/New_user.dart';
import 'package:driveapp/screen/OTP%20screen/otp_screen.dart';
import 'package:driveapp/screen/main%20screen%20model/Scnner%20Screen/Details/Details.dart';
import 'package:driveapp/screen/main%20screen%20model/Scnner%20Screen/Order%20details/Order_detials.dart';
import 'package:driveapp/screen/main%20screen%20model/Scnner%20Screen/Scnner_Screen.dart';
import 'package:driveapp/screen/main%20screen%20model/User%20Profile/Delivery%20Report/Delivery_Report.dart';
import 'package:driveapp/screen/main%20screen%20model/User%20Profile/Profile%20page/main_page.dart';
import 'package:driveapp/screen/main%20screen%20model/delivery%20location/Delivery_Location.dart';
import 'package:driveapp/screen/user%20can%20login/Uers_Are_existed.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: routes.Login_Screen,
          page: () => loginScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 100),
        ),
        GetPage(
          name: routes.User_Login,
          page: () => UserLogin(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(seconds: 4),
        ),
        GetPage(
          name: routes.OTP_Screen,
          page: () => otpScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 100),
        ),
        GetPage(
          name: routes.New_User,
          page: () => newUser(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 100),
        ),
        GetPage(
          name: routes.Main_Screen,
          page: () => MainScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 100),
        ),
        GetPage(
          name: routes.User_Profile,
          page: () => mainPage(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 100),
        ),
        GetPage(
          name: routes.Delivery_Screen,
          page: () => deliveryLocation(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 100),
        ),
        GetPage(
          name: routes.Scanner_Screen,
          page: () => ScannerScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 100),
        ),
        GetPage(
          name: routes.Delivery_Report,
          page: () => DeliveryReport(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 100),
        ),
        GetPage(
          name: routes.Details_Page,
          page: () => detailsPage(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 100),
        ),
        GetPage(
          name: routes.Order_details,
          page: () => orderDetails(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 100),
        ),
        GetPage(
          name: routes.Delivery_Location,
          page: () => deliveryLocation(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 100),
        ),
      ];
}
