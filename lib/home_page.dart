import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const kLogo = 'assets/images/bj_512.png';
const kLogoSize = 96.0;

const kBackdrop = 'assets/images/bg_4096_2304.png';
const kBackdropHeight = 480.0;

const kDeveloperName = 'LCD Soft';
const kSlogan =
    '🚀 Explore our innovative apps! From productivity tools to addictive games, we’ve got you covered. Discover the magic of LCD Soft today! 🌟';

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
    final screenHeight = MediaQuery.sizeOf(context).height;

    debugPrint('Screen width: $screenWidth');
    debugPrint('Screen height: $screenHeight');

    bool isScreenWide = screenWidth >= kMinWidthOfLargeScreen;
    var containerHeight = isScreenWide ? kLogoSize * 1.5 : kLogoSize * 3.0;

    return Container(
      color: Colors.red,
      height: containerHeight,
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Flex(
        direction: isScreenWide ? Axis.horizontal : Axis.vertical,
        children: [
          Flexible(
            fit: isScreenWide ? FlexFit.tight : FlexFit.loose,
            child: _buildRowDeveloper(),
          ),
          Flexible(
            fit: isScreenWide ? FlexFit.tight : FlexFit.loose,
            child: _buildSlogan(),
          ),
        ],
      ),
    );
  }

  _buildRowDeveloper() {
    return Container(
      color: Colors.blue,
      height: kLogoSize * 1.5,
      child: Row(
        children: [
          _buildLogo(),
          _buildDeveloper(),
        ],
      ),
    );
  }

  _buildBackdrop(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final screenHeight = MediaQuery.sizeOf(context).height;

    var backdropHeight = screenWidth * 9 / 16;
    debugPrint('backdropHeight: $backdropHeight');

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

  _buildDeveloper() {
    return const Expanded(
      child: Text(
        kDeveloperName,
        style: TextStyle(
          fontSize: 24.0,
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
              color: Colors.grey,
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

  _buildSlogan() {
    return Container(
      color: Colors.green,
      height: kLogoSize * 1.5,
      child: const Center(
        child: Text(
          kSlogan,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
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
