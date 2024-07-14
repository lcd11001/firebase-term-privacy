import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final String text;
  final Map<String, TextStyle> css;

  const Paragraph({
    super.key,
    required this.text,
    this.css = const {},
  });

  @override
  Widget build(BuildContext context) {
    List<String> parts = [];

    if (css.isNotEmpty) {
      // for example, if text is:
      // LCD Soft built the AAA app as a free app. This SERVICE is provided by LCD Soft at no cost and is intended for use as is.
      // and the css is:
      // {
      //   'LCD Soft': const TextStyle(
      //     fontSize: 30.0,
      //     fontWeight: FontWeight.bold,
      //     color: Colors.red,
      //   ),
      //   'AAA': const TextStyle(
      //     fontSize: 20.0,
      //     fontWeight: FontWeight.normal,
      //     color: Colors.blue,
      //   ),
      // }
      // then the text will be split into 5 groups:
      // 1. 'LCD Soft'
      // 2. 'built the '
      // 2. 'AAA'
      // 3. ' app as a free app. This SERVICE is provided by
      // 4. 'LCD Soft'
      // 5. 'at no cost and is intended for use as is.'
      List<String> keys = css.keys.toList();
      String pattern = keys.join('|'); // 'LCD Soft|AAA'
      RegExp regExp = RegExp(pattern);

      int start = 0;

      regExp.allMatches(text).forEach((match) {
        String beforeKey = text.substring(start, match.start);
        String key = match.group(0) ?? "";

        if (beforeKey.isNotEmpty) {
          parts.add(beforeKey);
        }
        if (key.isNotEmpty) {
          parts.add(key);
        }

        start = match.end;
      });

      if (start < text.length) {
        parts.add(text.substring(start));
      }

      debugPrint('parts: $parts');
    } else {
      parts.add(text);
    }

    // build the text with the css
    return RichText(
      text: TextSpan(
        children: parts.map((part) {
          TextStyle style = const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.normal,
          );

          if (css.containsKey(part)) {
            style = css[part]!;
          }

          return TextSpan(
            text: part,
            style: style,
          );
        }).toList(),
      ),
    );
  }
}
