import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        text,
        style: const TextStyle(fontSize: 15, color: Colors.black45),
      ),
    );
  }
}
