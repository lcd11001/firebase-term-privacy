import 'package:firebase_hosting/components/heading.dart';
import 'package:firebase_hosting/components/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TermsAndConditionPage extends StatelessWidget {
  const TermsAndConditionPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTermsAndConditions(context),
            _buildChangesToThisTermsAndConditions(context),
            _buildContactUs(context),
          ],
        ),
      ),
    );
  }

  _buildTermsAndConditions(BuildContext context) {
    final _ = AppLocalizations.of(context)!;
    final company = _.developerName;
    final appTitle = "App Title";

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Heading(text: _.termsTitle1),
          Paragraph(text: _.term1(company)),
          Paragraph(text: _.term2(company)),
          Paragraph(text: _.term3(appTitle)),
        ],
      ),
    );
  }

  _buildChangesToThisTermsAndConditions(BuildContext context) {
    final _ = AppLocalizations.of(context)!;
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Heading(text: _.termsTitle2),
        ],
      ),
    );
  }

  _buildContactUs(BuildContext context) {
    final _ = AppLocalizations.of(context)!;
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Heading(text: _.termsTitle3),
        ],
      ),
    );
  }
}
