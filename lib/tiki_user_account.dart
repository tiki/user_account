import 'package:flutter/cupertino.dart';
import 'package:httpp/httpp.dart';

import 'src/user_account_service.dart';

class TikiUserAccount {
  final UserAccountService _service;

  TikiUserAccount(
      {
      HttppClient? httppClient,
      required String referalCode,
      required Function logout,
      required String combinedKeys})
      : _service = UserAccountService(
            httppClient: httppClient ?? Httpp().client(),
            referalCode: referalCode,
            logout: logout,
            combinedKeys: combinedKeys);

  open(BuildContext context) {
    _service.presenter.showModal(context);
  }
}