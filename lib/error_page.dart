import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String uri;

  const ErrorPage({super.key, required this.uri});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Page'),
      ),
      body: Center(
        child: Text('Error Page $uri'),
      ),
    );
  }
}
