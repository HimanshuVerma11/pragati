import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pragati/routes/routes_names.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: MyAppRouter().route.routeInformationProvider,
      routerDelegate: MyAppRouter().route.routerDelegate,
      routeInformationParser: MyAppRouter().route.routeInformationParser,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: Colors.deepPurple),
    );
  }
}
