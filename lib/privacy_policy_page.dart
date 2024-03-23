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
          Heading(text: _.privacyTitle1),
          Paragraph(text: _.privacy1(company, appTitle)),
          Paragraph(text: _.privacy2),
          Paragraph(text: _.privacy3),
          Paragraph(text: _.privacy4(appTitle)),
        ],
      ),
    );
  }

  _buildInformationCollectionAndUse(BuildContext context) {
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
          Heading(text: _.privacyTitle2),
          Paragraph(text: _.privacy5(appTitle)),
          Container(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hyperlink(text: _.privacy5_hyperlink),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildLogData(BuildContext context) {
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
          Heading(text: _.privacyTitle3),
          Paragraph(text: _.privacy6),
        ],
      ),
    );
  }

  _buildCookies(BuildContext context) {
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
          Heading(text: _.privacyTitle4),
          Paragraph(text: _.privacy7),
          Paragraph(text: _.privacy8),
        ],
      ),
    );
  }

  _buildServiceProviders(BuildContext context) {
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
          Heading(text: _.privacyTitle5),
          Paragraph(text: _.privacy9),
          Container(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Paragraph(text: _.privacy10),
                Paragraph(text: _.privacy11),
                Paragraph(text: _.privacy12),
                Paragraph(text: _.privacy13),
              ],
            ),
          ),
          Paragraph(text: _.privacy14),
        ],
      ),
    );
  }

  _buildSecurity(BuildContext context) {
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
          Heading(text: _.privacyTitle6),
          Paragraph(text: _.privacy15),
        ],
      ),
    );
  }

  _buildLinksToOtherSites(BuildContext context) {
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
          Heading(text: _.privacyTitle7),
          Paragraph(text: _.privacy16),
        ],
      ),
    );
  }

  _buildChildrensPrivacy(BuildContext context) {
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
          Heading(text: _.privacyTitle8),
          Paragraph(text: _.privacy17),
        ],
      ),
    );
  }

  _buildChangesToThisPrivacyPolicy(BuildContext context) {
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
          Heading(text: _.privacyTitle9),
          Paragraph(text: _.privacy18),
          Paragraph(text: _.privacy19(DateTime(2024, 03, 15))),
        ],
      ),
    );
  }

  _buildContactUs(BuildContext context) {
    final _ = AppLocalizations.of(context)!;
    final company = _.developerName;
    final email = _.developerEmail;

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: _.privacyTitle10),
          Paragraph(text: _.privacy20(email)),
          Hyperlink(text: _.privacy20_hyperlink),
        ],
      ),
    );
  }
}
