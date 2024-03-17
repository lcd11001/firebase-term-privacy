import 'package:firebase_hosting/error_page.dart';
import 'package:firebase_hosting/home_page.dart';
import 'package:firebase_hosting/privacy_policy_page.dart';
import 'package:firebase_hosting/terms_and_condition_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _goRouter = GoRouter(
  //initialLocation: '/',
  onException: (context, state, router) {
    router.go('/404', extra: state.uri.toString());
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/terms-and-conditions',
      builder: (context, state) => const TermsAndConditionPage(),
    ),
    GoRoute(
      path: '/privacy-policy',
      builder: (context, state) => const PrivacyPolicyPage(),
    ),
    GoRoute(
      path: '/404',
      builder: (context, state) {
        final uri = state.extra as String?;
        return ErrorPage(uri: uri ?? '');
      },
    )
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _goRouter,
    );
  }
}
