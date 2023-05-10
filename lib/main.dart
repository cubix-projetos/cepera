import 'package:aplicativo_cepera/routes/app_pages.dart';
import 'package:aplicativo_cepera/screens/home/home_screen.dart';
import 'package:aplicativo_cepera/screens/splash/splash_screen.dart';
import 'package:aplicativo_cepera/themes/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: PagesRoutes.loginRoute,
      getPages: AppPages.pages,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        fontFamily: 'poppins',
        floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: lightColorScheme.secondary,
        foregroundColor: Colors.white,
        extendedTextStyle:  const TextStyle(fontFamily: 'poppins', fontSize: 20)
        ),
      ),
    );
  }
}
