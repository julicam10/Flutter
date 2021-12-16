import 'package:flutter/material.dart';
import 'package:login_design/widgets/button_widget.dart';
import 'package:login_design/widgets/final_text_widget.dart';
import 'package:login_design/widgets/info_widget.dart';
import 'package:login_design/widgets/input_widget.dart';
import 'package:login_design/widgets/welcome_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            _Imagen(),
            WelcomeWidget(text: '¡Welcome back!'),
            Info(text: 'Log in your existent account of Q Allue'),
            Input(
              obscureText: false,
              icon: Icons.people_alt_rounded,
              textInputType: TextInputType.emailAddress,
              label: 'Email',
            ),
            Input(
              obscureText: true,
              icon: Icons.security_rounded,
              textInputType: TextInputType.text,
              label: 'Password',
            ),
            _Help(),
            LogInButton(text: 'LOG IN'),
            _ConectMethods(),
            _Buttons(),
            FinalText(
              text: "Don't have an account? ",
              spanText: "Sign Up",
              ruta: 'signup_screen',
            )
          ],
        ),
      ),
    );
  }
}

class _Imagen extends StatelessWidget {
  const _Imagen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 300,
      width: 300,
      child: const Image(
        image: AssetImage('assets/login.png'),
        fit: BoxFit.contain,
      ),
    );
  }
}

class _Help extends StatelessWidget {
  const _Help({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        Text(
          'Forgot Password?',
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(width: 40)
      ],
    );
  }
}

class _ConectMethods extends StatelessWidget {
  const _ConectMethods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const Text(
        'Or connect using',
        style: TextStyle(fontSize: 12, color: Colors.black38),
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        OtherLoginMethods(
          icon: Icons.facebook_outlined,
          color: Colors.blueAccent,
          text: 'Facebook',
        ),
        OtherLoginMethods(
          icon: Icons.g_mobiledata_rounded,
          color: Colors.red,
          text: 'Google',
        ),
      ],
    );
  }
}

class OtherLoginMethods extends StatelessWidget {
  const OtherLoginMethods({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: color,
      minimumSize: const Size(88, 36),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );

    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
      style: raisedButtonStyle,
    );
  }
}
