import 'package:firebase_hosting/my_app.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_hosting/firebase_options.dart';

void main() async {
  // Ensure widgets are initialized before getting package info or initializing Firebase
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final packageInfo = await PackageInfo.fromPlatform();
  runApp(
    MyApp(
      version: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
    ),
  );
}
