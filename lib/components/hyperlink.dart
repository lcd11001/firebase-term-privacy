import 'package:flutter/material.dart';

class Hyperlink extends StatelessWidget {
  final String text;

  final String url;

  // https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget
  const Hyperlink({super.key, required this.text, required this.url});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: handleOnClicked,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),
      ),
    );
  }

  void handleOnClicked() {
    // open the url
    debugPrint('Opening $url');
  }
}
