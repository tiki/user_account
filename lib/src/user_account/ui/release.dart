import 'package:flutter/material.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../tiki_card/tiki_card.dart';

class UserAccountUiRelease extends StatelessWidget {

  static const String _title = "Coming next";
  static const String _text = "See which companies \nemail you";
  static const String _cta = "Read More";
  static const String _url = "https://mytiki.com/blog/peek-TIKI-app-prototype";

  const UserAccountUiRelease({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: TikiCard(
          const TikiCardUiTitle(_title),
          const TikiCardUiText(_text),
          TikiCardUiFigure(ImgProvider.emailSee),
          cta: TikiCardUiCtaInline(
              Text(_cta,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeProvider.instance.text(12.5),
                      color: const Color(0xFFFF521C))),
              const Icon(Icons.arrow_forward, color: Color(0xFFFF521C)),
              () => TikiCardController.launchUrl(_url)),
        ),
        onTap: () => TikiCardController.launchUrl(_url));
  }
}