import 'package:flutter/material.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../tiki_card/tiki_card.dart';

class UserAccountUiCommunity extends StatelessWidget {
  static const double _btnTextFontSize = 12;
  static const String _title = "TIKI tribe";
  static const String _text =
      "Join our community of \nTIKI-nites from around \nthe globe.";
  static const String _discord = "Discord";
  static const String _discordLink = "https://discord.com/invite/evjYQq48Be";
  static const Color _discordColor = Color(0xFF7289DA);
  static const String _signal = "Signal";
  static const String _signalLink =
      "https://signal.group/#CjQKIA66Eq2VHecpcCd-cu-dziozMRSH3EuQdcZJNyMOYNi5EhC0coWtjWzKQ1dDKEjMqhkP";
  static const Color _signalColor = Color(0xFF3661D1);
  static const String _telegram = "Telegram";
  static const String _telegramLink = "https://t.me/mytikiapp";
  static const Color _telegramColor = Color(0xFF0088CC);

  const UserAccountUiCommunity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TikiCard(const TikiCardUiTitle(_title), const TikiCardUiText(_text),
        TikiCardUiFigure(ImgProvider.tikiAndPals),
        cta: TikiCardUiCtaRow([
          Expanded(
              child: GestureDetector(
                  onTap: () => TikiCardController.openUrl(_discordLink),
                  child: Container(
                      height: SizeProvider.instance.width(50),
                      decoration: const BoxDecoration(
                          color: _discordColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(24))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image: ImgProvider.discordLogo.image,
                                height: SizeProvider.instance.height(16)),
                            Text(_discord,
                                style: TextStyle(
                                    fontFamily: TextProvider.familyNunitoSans,
                                    package: TextProvider.package,
                                    fontSize: SizeProvider.instance
                                        .text(_btnTextFontSize),
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ])))),
          Container(width: 1, color: Colors.white),
          Expanded(
              child: GestureDetector(
                  onTap: () => TikiCardController.openUrl(_signalLink),
                  child: Container(
                      height: SizeProvider.instance.width(50),
                      color: _signalColor,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: EdgeInsets.only(
                                    right: SizeProvider.instance.width(8)),
                                child: Image(
                                    image: ImgProvider.signalLogo.image,
                                    height: SizeProvider.instance.height(12))),
                            Text(_signal,
                                style: TextStyle(
                                    fontSize: SizeProvider.instance
                                        .text(_btnTextFontSize),
                                    color: Colors.white,
                                    fontFamily: TextProvider.familyNunitoSans,
                                    package: TextProvider.package,
                                    fontWeight: FontWeight.bold))
                          ])))),
          Container(width: 1, color: Colors.white),
          Expanded(
              child: GestureDetector(
                  onTap: () => TikiCardController.openUrl(_telegramLink),
                  child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(24)),
                          color: _telegramColor),
                      height: SizeProvider.instance.width(50),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: EdgeInsets.only(
                                    right: SizeProvider.instance.width(8)),
                                child: Image(image: ImgProvider.telegramLogo.image, height: SizeProvider.instance.height(10))),
                            Text(_telegram,
                                style: TextStyle(
                                    fontSize: SizeProvider.instance
                                        .text(_btnTextFontSize),
                                    color: Colors.white,
                                    fontFamily: TextProvider.familyNunitoSans,
                                    package: TextProvider.package,
                                    fontWeight: FontWeight.bold))
                          ])))),
        ]));
  }
}
