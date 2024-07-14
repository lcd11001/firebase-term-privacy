import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const kLogo = 'assets/images/bj_512.png';
const kLogoSize = 96.0;

const kBackdrop = 'assets/images/bg_4096_2304.png';
const kBackdropHeight = 480.0;

const kMinWidthOfLargeScreen = 600.0;

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildBackdrop(context),
            // _buildDeveloper(),
            _buildFlexDeveloper(context),
            _buildApps(),
          ],
        ),
      ),
    );
  }

  _buildFlexDeveloper(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    bool isScreenWide = screenWidth >= kMinWidthOfLargeScreen;
    var containerHeight = isScreenWide ? kLogoSize * 2.0 : kLogoSize * 3.5;

    return Container(
      color: Colors.transparent,
      height: containerHeight,
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Flex(
        direction: isScreenWide ? Axis.horizontal : Axis.vertical,
        children: [
          Flexible(
            fit: isScreenWide ? FlexFit.tight : FlexFit.loose,
            child: _buildRowDeveloper(context),
          ),
          Flexible(
            fit: isScreenWide ? FlexFit.tight : FlexFit.loose,
            child: _buildSlogan(context),
          ),
        ],
      ),
    );
  }

  _buildRowDeveloper(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: kLogoSize * 1.5,
      // padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          _buildLogo(),
          const SizedBox(
            width: 16.0,
          ),
          _buildDeveloper(context),
        ],
      ),
    );
  }

  _buildBackdrop(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    var backdropHeight = screenWidth * 9 / 16;

    return Container(
      height: min(backdropHeight, kBackdropHeight),
      decoration: const BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          image: AssetImage(kBackdrop),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _buildDeveloper(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return Expanded(
      child: Text(
        loc.developerName,
        style: const TextStyle(
          fontSize: 36.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _buildLogo() {
    return SizedBox.fromSize(
      size: const Size(kLogoSize, kLogoSize),
      child: ClipOval(
        child: Container(
          width: kLogoSize,
          height: kLogoSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1.0,
            ),
          ),
          child: Image.asset(
            kLogo,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  _buildSlogan(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return Container(
      color: Colors.transparent,
      height: kLogoSize * 2.0,
      // padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Center(
        child: Text(
          loc.slogan,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  _buildApps() {
    return Container(
      color: Colors.transparent,
      height: 1,
    );
  }
}
