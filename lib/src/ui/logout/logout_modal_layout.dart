/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../user_account_service.dart';
import 'logout_modal_view_header.dart';

class LogoutModalLayout extends StatelessWidget {

  const LogoutModalLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserAccountService service = Provider.of<UserAccountService>(context);
    return SizedBox(
        height: service.style.size(285),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          LogoutModalViewHeader(style: service.style),
          Padding(padding: EdgeInsets.only(top: service.style.size(24))),
          Expanded(
              child: Column(children: [
            Text("Are you sure you want to log out?",
                style: TextStyle(
                    color: const Color(0xFF00133F),
                    fontSize: service.style.text(14),
                    fontWeight: FontWeight.w800)),
            Padding(padding: EdgeInsets.only(top: service.style.size(12))),
            TextButton(
              style: TextButton.styleFrom(
                  fixedSize: Size.fromWidth(service.style.size(300)),
                  padding: EdgeInsets.symmetric(vertical: service.style.size(16)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(service.style.size(10)))),
                  side: const BorderSide(width: 2, color: Color(0xFFFF521C))),
              child: Text("Log out",
                  style: TextStyle(
                      color: const Color(0xFFFF521C),
                      fontSize: service.style.text(14),
                      fontWeight: FontWeight.bold)),
              onPressed: () => service.controller.onLogout(context),
            ),
            Padding(padding: EdgeInsets.only(top: service.style.size(8))),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromWidth(service.style.size(300)),
                primary: const Color(0xFFFF521C),
                padding: EdgeInsets.symmetric(vertical: service.style.size(16)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(service.style.size(10)))),
              ),
              child: Text("Cancel",
                  style:
                      TextStyle(fontSize: service.style.text(14), fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.of(context).pop(),
            )
          ]))
        ]));
  }
}