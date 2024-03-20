// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:firebase_hosting/my_app.dart';

const iPhoneSE = Size(375, 667);
const samsungS8 = Size(360, 740);
const iPhoneXR = Size(414, 896);
const iPadMini = Size(768, 1024);
const iPadPro = Size(1024, 1366);

void testHomePage(WidgetTester tester, Size size) async {
  debugPrint('Screen size: $size');
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1.0;

  // Build our app and trigger a frame.
  await tester.pumpWidget(const MyApp());

  // Verify that our counter starts at 0.
  expect(find.text('LCD Soft'), findsOneWidget);
}

void main() {
  testWidgets('Test Home Page iPhoneSE', (WidgetTester tester) async {
    testHomePage(tester, iPhoneSE);
  });

  testWidgets('Test Home Page Samsung S8', (WidgetTester tester) async {
    testHomePage(tester, samsungS8);
  });

  testWidgets('Test Home Page iPhoneXR', (WidgetTester tester) async {
    testHomePage(tester, iPhoneXR);
  });

  testWidgets('Test Home Page iPad Mini', (WidgetTester tester) async {
    testHomePage(tester, iPadMini);
  });

  testWidgets('Test Home Page iPad Pro', (WidgetTester tester) async {
    testHomePage(tester, iPadPro);
  });
}
