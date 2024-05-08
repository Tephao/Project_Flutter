import 'package:flutter/material.dart';
import 'package:puc_minas/app/core/constants/app_routes.dart';
import 'package:puc_minas/app/features/login/login_page.dart';
import 'package:puc_minas/app/features/splash/splash_page.dart';

class Routes {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.splash: (context) => const SplashPage(),
    AppRoutes.login: (context) => const LoginPage(),
  };
}



