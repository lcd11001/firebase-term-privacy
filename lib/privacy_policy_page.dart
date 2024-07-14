import 'package:firebase_hosting/components/heading.dart';
import 'package:firebase_hosting/components/hyperlink.dart';
import 'package:firebase_hosting/components/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PrivacyPolicyPage extends StatelessWidget {
  final String appTitle;

  const PrivacyPolicyPage({
    super.key,
    required this.appTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPrivacyPolicy(context),
            _buildInformationCollectionAndUse(context),
            _buildLogData(context),
            _buildCookies(context),
            _buildServiceProviders(context),
            _buildSecurity(context),
            _buildLinksToOtherSites(context),
            _buildChildrensPrivacy(context),
            _buildChangesToThisPrivacyPolicy(context),
            _buildContactUs(context),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }

  _buildPrivacyPolicy(BuildContext context) {
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
          Heading(text: loc.privacyTitle1),
          Paragraph(text: loc.privacy1(company, appTitle)),
          Paragraph(text: loc.privacy2),
          Paragraph(text: loc.privacy3),
          Paragraph(text: loc.privacy4(appTitle)),
        ],
      ),
    );
  }

  _buildInformationCollectionAndUse(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: loc.privacyTitle2),
          Paragraph(text: loc.privacy5(appTitle)),
          Container(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hyperlink(text: loc.privacy5_hyperlink),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildLogData(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: loc.privacyTitle3),
          Paragraph(text: loc.privacy6),
        ],
      ),
    );
  }

  _buildCookies(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: loc.privacyTitle4),
          Paragraph(text: loc.privacy7),
          Paragraph(text: loc.privacy8),
        ],
      ),
    );
  }

  _buildServiceProviders(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: loc.privacyTitle5),
          Paragraph(text: loc.privacy9),
          Container(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Paragraph(text: loc.privacy10),
                Paragraph(text: loc.privacy11),
                Paragraph(text: loc.privacy12),
                Paragraph(text: loc.privacy13),
              ],
            ),
          ),
          Paragraph(text: loc.privacy14),
        ],
      ),
    );
  }

  _buildSecurity(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: loc.privacyTitle6),
          Paragraph(text: loc.privacy15),
        ],
      ),
    );
  }

  _buildLinksToOtherSites(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: loc.privacyTitle7),
          Paragraph(text: loc.privacy16),
        ],
      ),
    );
  }

  _buildChildrensPrivacy(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: loc.privacyTitle8),
          Paragraph(text: loc.privacy17),
        ],
      ),
    );
  }

  _buildChangesToThisPrivacyPolicy(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: loc.privacyTitle9),
          Paragraph(text: loc.privacy18),
          Paragraph(text: loc.privacy19(DateTime(2024, 03, 15))),
        ],
      ),
    );
  }

  _buildContactUs(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final email = loc.developerEmail;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: loc.privacyTitle10),
          Paragraph(text: loc.privacy20(email)),
          Hyperlink(text: loc.privacy20_hyperlink),
        ],
      ),
    );
  }
}
