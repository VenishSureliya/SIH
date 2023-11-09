import 'package:flutter/material.dart';
import 'package:sih/presentation/get_started_screen/get_started_screen.dart';
import 'package:sih/presentation/registration_screen/registration_screen.dart';
import 'package:sih/presentation/login_screen/login_screen.dart';
import 'package:sih/presentation/home_info_screen/home_info_screen.dart';
import 'package:sih/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String getStartedScreen = '/get_started_screen';

  static const String registrationScreen = '/registration_screen';

  static const String loginScreen = '/login_screen';

  static const String homeInfoScreen = '/home_info_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    getStartedScreen: (context) => GetStartedScreen(),
    registrationScreen: (context) => RegistrationScreen(),
    loginScreen: (context) => LoginScreen(),
    homeInfoScreen: (context) => HomeInfoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
