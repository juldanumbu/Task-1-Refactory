import 'package:flutter/material.dart';
import 'Login copy.dart';
import 'register copy.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
        routes: {
          MyRoutes.LoginPage: (context) => LoginPage(),
          MyRoutes.RegisterPage: (context) => RegisterPage()
        });
  }
}
