import 'package:auto_text_detector/src/core/helpers/launcher_helper.dart';
import 'package:auto_text_detector/src/core/utils/regex_utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class AutoTextDetector extends StatelessWidget {
  final String text;

  /// Existing styles (UNCHANGED)
  final TextStyle? normalStyle;
  final TextStyle? detectedStyle;

  /// 🔥 NEW: Individual styles
  final TextStyle? urlStyle;
  final TextStyle? emailStyle;
  final TextStyle? phoneStyle;

  const AutoTextDetector({
    super.key,
    required this.text,
    this.normalStyle,
    this.detectedStyle,

    /// NEW
    this.urlStyle,
    this.emailStyle,
    this.phoneStyle,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: _buildTextSpans(),
        style: normalStyle ??
            const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
      ),
    );
  }

  List<TextSpan> _buildTextSpans() {
    final List<TextSpan> spans = [];
    final words = text.split(' ');

    for (final word in words) {
      if (RegexUtils.url.hasMatch(word)) {
        spans.add(_clickableSpan(
          word,
              () => LauncherHelper.openUrl(word),
          urlStyle,
        ));
      } else if (RegexUtils.email.hasMatch(word)) {
        spans.add(_clickableSpan(
          word,
              () => LauncherHelper.openEmail(word),
          emailStyle,
        ));
      } else if (RegexUtils.phone.hasMatch(word)) {
        spans.add(_clickableSpan(
          word,
              () => LauncherHelper.openPhone(word),
          phoneStyle,
        ));
      } else {
        spans.add(TextSpan(text: '$word '));
      }
    }

    return spans;
  }

  TextSpan _clickableSpan(
      String value,
      VoidCallback onTap,
      TextStyle? customStyle,
      ) {
    return TextSpan(
      text: '$value ',
      style: customStyle ??
          detectedStyle ??
          const TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
      recognizer: TapGestureRecognizer()..onTap = onTap,
    );
  }
}
