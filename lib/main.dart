import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saving_app/pages/main_page.dart';
import 'package:saving_app/pages/on_boarding_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
        title: "Saving App",
        debugShowCheckedModeBanner: false,
        routes: {
          OnBoardingPage.nameRoute: (context) => OnBoardingPage(),
          MainPage.nameRoute: (context) => MainPage(),
        });
  }
}
