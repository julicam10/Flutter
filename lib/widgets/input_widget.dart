import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.obscureText,
    required this.icon,
    required this.textInputType,
    required this.label,
  }) : super(key: key);

  final bool obscureText;
  final IconData icon;
  final TextInputType textInputType;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      height: 60,
      child: TextField(
        obscureText: obscureText,
        keyboardType: textInputType,
        autofocus: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          label: Text(label),
          prefix: Container(
            margin: const EdgeInsets.only(right: 15),
            child: Icon(
              icon,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
