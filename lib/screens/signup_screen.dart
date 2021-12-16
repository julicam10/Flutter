import 'package:flutter/material.dart';
import 'package:login_design/widgets/button_widget.dart';
import 'package:login_design/widgets/final_text_widget.dart';
import 'package:login_design/widgets/info_widget.dart';
import 'package:login_design/widgets/input_widget.dart';
import 'package:login_design/widgets/welcome_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80),
          child: Column(
            children: const [
              WelcomeWidget(text: "¡Let's Get Started!"),
              Info(
                text: 'Create an account to Q Allue to get all features',
              ),
              Input(
                obscureText: false,
                icon: Icons.people_alt_rounded,
                textInputType: TextInputType.name,
                label: 'Name',
              ),
              Input(
                obscureText: false,
                icon: Icons.email_rounded,
                textInputType: TextInputType.emailAddress,
                label: 'Email',
              ),
              Input(
                obscureText: false,
                icon: Icons.phone_android_rounded,
                textInputType: TextInputType.number,
                label: 'Phone',
              ),
              Input(
                obscureText: true,
                icon: Icons.security_rounded,
                textInputType: TextInputType.text,
                label: 'Password',
              ),
              Input(
                obscureText: true,
                icon: Icons.security_rounded,
                textInputType: TextInputType.text,
                label: 'Confirm Password',
              ),
              LogInButton(text: 'CREATE'),
              FinalText(
                text: "Already hace an account ",
                spanText: "Login here",
                ruta: 'login_screen',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
