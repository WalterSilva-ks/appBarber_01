import 'package:app_barber/routes/routes.dart';
import 'package:app_barber/pages/homePage/homeScreen.dart';
import 'package:app_barber/pages/userLogin/loginMain.dart';
import 'package:flutter/material.dart';

abstract class Pages {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.LoginScreenPage: (BuildContext context) => const LoginMain(),
    Routes.homeScreenPage: (BuildContext context) => const HomeScreen(),
  };
}
