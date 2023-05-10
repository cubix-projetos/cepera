import 'package:aplicativo_cepera/screens/login/login_screen.dart';
import 'package:aplicativo_cepera/screens/splash/splash_screen.dart';
import 'package:get/get.dart';


abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: PagesRoutes.splashRoute,
      page: () =>  SplashScreen(),
    ),
      GetPage(
      name: PagesRoutes.loginRoute,
      page: () =>  LoginScreen(),
    ),
  
 
  ];
}

abstract class PagesRoutes {
  static const String splashRoute = '/splash';
  static const String loginRoute = '/login';
  static const String homeRoute = '/home';
}