import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;

  const Heading({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20.0),
        Text(
          text,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
