import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:url_launcher/url_launcher.dart';

class Hyperlink extends StatelessWidget {
  final String text;

  // https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget
  const Hyperlink({
    super.key,
    required this.text,
  });

  List<_Hyperlink> _normalizeText(String text) {
    debugPrint('_normalizeText: $text');

    List<_Hyperlink> results = [];
    RegExp exp = RegExp(r'<a[^>]*>([^<]+)<\/a>');
    Iterable<RegExpMatch> matches = exp.allMatches(text);
    debugPrint('matches: ${matches.length}');
    int lastIndex = 0;

    for (RegExpMatch match in matches) {
      if (match.start > lastIndex) {
        final String beforeMatch = text.substring(lastIndex, match.start);
        results.add(_Hyperlink(
          isTag: false,
          text: beforeMatch,
        ));
      }

      final String matchText = text.substring(match.start, match.end);
      final document = parse(matchText);
      final aTag = document.getElementsByTagName('a').first;
      results.add(_Hyperlink(
        isTag: true,
        text: aTag.text,
        href: aTag.attributes['href'] ?? '',
      ));
      lastIndex = match.end;
    }

    if (lastIndex < text.length) {
      final afterLastMatch = text.substring(lastIndex);
      results.add(_Hyperlink(
        isTag: false,
        text: afterLastMatch,
      ));
    }

    return results;
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: _normalizeText(text).map((element) {
          debugPrint('element: ${element.text}');
          if (element.isTag) {
            return TextSpan(
              text: element.text,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.underline,
                color: Colors.blue,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  await handleOnClicked(element.href);
                },
            );
          } else {
            return TextSpan(
              text: element.text,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.normal,
              ),
            );
          }
        }).toList(),
      ),
    );
  }

  Future handleOnClicked(String url) async {
    // open the url
    debugPrint('Opening $url');
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class _Hyperlink {
  final String text;
  final String href;
  final bool isTag;

  _Hyperlink({
    required this.text,
    required this.isTag,
    this.href = '',
  });
}
