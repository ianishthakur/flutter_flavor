import 'package:apple_pay/app_config.dart';
import 'package:apple_pay/home_page.dart';
import 'package:flutter/material.dart';

void main() async {
  AppConfig.create(
    appName: "Prod Flavor Example",
    baseUrl: "https://dwirandyh.com",
    primaryColor: Colors.blue,
    flavor: Flavor.prod,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Prod',
      theme: ThemeData(
        primarySwatch: AppConfig.shared.primaryColor,
      ),
      home: const HomePage(),
    );
  }
}