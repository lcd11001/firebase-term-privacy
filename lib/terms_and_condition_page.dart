import 'package:firebase_hosting/components/heading.dart';
import 'package:firebase_hosting/components/hyperlink.dart';
import 'package:firebase_hosting/components/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TermsAndConditionPage extends StatelessWidget {
  final String appTitle;

  const TermsAndConditionPage({super.key, required this.appTitle});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTermsAndConditions(context),
            _buildChangesToThisTermsAndConditions(context),
            _buildContactUs(context),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }

  _buildTermsAndConditions(BuildContext context) {
    final _ = AppLocalizations.of(context)!;
    final company = _.developerName;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: _.termsTitle1),
          Paragraph(text: _.term1(company)),
          Paragraph(text: _.term2(company)),
          Paragraph(text: _.term3(appTitle)),
          Paragraph(text: _.term4),
          Container(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hyperlink(text: _.term4_hyperlink),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
          Paragraph(text: _.term5(company)),
          Paragraph(text: _.term6),
          Paragraph(text: _.term7(company)),
          Paragraph(text: _.term8(company)),
          Paragraph(text: _.term9(company)),
        ],
      ),
    );
  }

  _buildChangesToThisTermsAndConditions(BuildContext context) {
    final _ = AppLocalizations.of(context)!;
    final company = _.developerName;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: _.termsTitle2),
          Paragraph(text: _.term10(company)),
          Paragraph(text: _.term11(DateTime(2024, 03, 15))),
        ],
      ),
    );
  }

  _buildContactUs(BuildContext context) {
    final _ = AppLocalizations.of(context)!;
    final email = _.developerEmail;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: _.termsTitle3),
          Paragraph(text: _.term12(email)),
          Hyperlink(text: _.term12_hyperlink),
        ],
      ),
    );
  }
}
