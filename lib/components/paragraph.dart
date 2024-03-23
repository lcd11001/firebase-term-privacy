import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final String text;

  const Paragraph({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
