/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:tiki_style/tiki_style.dart';

class ReferUiText extends StatelessWidget {
  static const String _textL1 = "Share your TIKI code and get";
  static const String _textL2 = "\$5 for every 10 people who join.";
  static const double _fontSize = 14;

  const ReferUiText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _textL1,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: TextProvider.familyNunitoSans,
              package: 'tiki_style',
              fontSize: SizeProvider.instance.text(_fontSize),
              fontWeight: FontWeight.w600,
              color: const Color(0xFF00133F)),
        ),
        Text(
          _textL2,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: TextProvider.familyNunitoSans,
              package: 'tiki_style',
              letterSpacing: -0.1,
              height: 1.1,
              fontSize: SizeProvider.instance.text(_fontSize),
              fontWeight: FontWeight.w800,
              color: const Color(0xFF00133F)),
        )
      ],
    );
  }
}
