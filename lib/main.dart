import 'package:flutter/material.dart';
import 'package:login_design/screens/login_screen.dart';
import 'package:login_design/screens/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Design',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login_screen',
      routes: {
        'login_screen': (_) => const LoginScreen(),
        'signup_screen': (_) => const SignUpScreen(),
      },
    );
  }
}
