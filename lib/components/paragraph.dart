import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final String text;

  const Paragraph({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.normal,
        ));
  }
}