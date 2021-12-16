import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FinalText extends StatelessWidget {
  const FinalText({
    Key? key,
    required this.text,
    required this.spanText,
    required this.ruta,
  }) : super(key: key);

  final String text;
  final String spanText;
  final String ruta;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: RichText(
        text: TextSpan(
          text: text,
          style: const TextStyle(color: Colors.black87),
          children: [
            TextSpan(
              style: const TextStyle(
                color: Colors.blueAccent,
                decoration: TextDecoration.underline,
              ),
              text: spanText,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, ruta);
                },
            ),
          ],
        ),
      ),
    );
  }
}
