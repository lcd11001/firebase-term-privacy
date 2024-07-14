import 'package:firebase_hosting/components/heading.dart';
import 'package:firebase_hosting/components/hyperlink.dart';
import 'package:firebase_hosting/components/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TermsAndConditionPage extends StatefulWidget {
  final String appTitle;

  const TermsAndConditionPage({super.key, required this.appTitle});

  @override
  State<TermsAndConditionPage> createState() => _TermsAndConditionPageState();
}

class _TermsAndConditionPageState extends State<TermsAndConditionPage> {
  final Map<String, TextStyle> css = {};

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    css.addAll({
      loc.developerName: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Colors.purple,
      ),
      loc.developerEmail: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.normal,
        color: Colors.green,
      ),
      widget.appTitle: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        //decoration: TextDecoration.underline,
        color: Colors.orange,
      ),
    });

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
    final loc = AppLocalizations.of(context)!;
    final company = loc.developerName;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: loc.termsTitle1),
          Paragraph(text: loc.term1(company), css: css),
          Paragraph(text: loc.term2(company), css: css),
          Paragraph(text: loc.term3(widget.appTitle), css: css),
          Paragraph(text: loc.term4),
          Container(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hyperlink(text: loc.term4_hyperlink),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
          Paragraph(text: loc.term5(company), css: css),
          Paragraph(text: loc.term6),
          Paragraph(text: loc.term7(company), css: css),
          Paragraph(text: loc.term8(company), css: css),
          Paragraph(text: loc.term9(company), css: css),
        ],
      ),
    );
  }

  _buildChangesToThisTermsAndConditions(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final company = loc.developerName;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: loc.termsTitle2),
          Paragraph(text: loc.term10(company), css: css),
          Paragraph(text: loc.term11(DateTime(2024, 03, 15))),
        ],
      ),
    );
  }

  _buildContactUs(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final email = loc.developerEmail;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: loc.termsTitle3),
          Paragraph(text: loc.term12(email), css: css),
          Hyperlink(text: loc.term12_hyperlink),
        ],
      ),
    );
  }
}
