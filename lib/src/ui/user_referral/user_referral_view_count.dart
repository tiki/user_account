/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../user_account_service.dart';

class UserReferralViewCount extends StatelessWidget {
  static const double _fontSize = 13;
  static const String _text = " people joined";

  const UserReferralViewCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserAccountService service = Provider.of<UserAccountService>(context);
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Container(
          margin: EdgeInsets.only(right: service.style.size(8)),
          child: Image.asset("res/images/ref-user.png", height: service.style.text(_fontSize))),
      Text(service.model.referCount.toString() + _text,
          style: TextStyle(
              fontSize: service.style.text(_fontSize),
              fontWeight: FontWeight.w600,
              color: const Color(0xFF00B272)))
    ]);
  }
}