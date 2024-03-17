import 'package:flutter/material.dart';

const _LOGO_SIZE = 96.0;

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ConstrainedBox(
              constraints: const BoxConstraints.expand(height: 480),
              child: Image.asset(
                'assets/images/bg_4096_2304.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 50,
                right: 50,
                top: 100,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: _LOGO_SIZE,
                              height: _LOGO_SIZE,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: 1,
                                ),
                                borderRadius:
                                    BorderRadius.circular(_LOGO_SIZE / 2),
                              ),
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(_LOGO_SIZE / 2),
                              child: Image.asset(
                                'assets/images/bj_512.png',
                                width: _LOGO_SIZE,
                                height: _LOGO_SIZE,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          'LCD Soft',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Text(
                        '🚀 Explore our innovative apps! From productivity tools to addictive games, we’ve got you covered. Discover the magic of LCD Soft today! 🌟',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
