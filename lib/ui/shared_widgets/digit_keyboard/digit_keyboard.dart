import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_auth_ui/provider/pin_provider.dart';
import 'package:pin_auth_ui/res/strings.dart';

import 'package:pin_auth_ui/services/dialog_service/dialog_service.dart';
import 'package:pin_auth_ui/services/dialog_service/dialogs/default_alert_dialog.dart';
import 'package:pin_auth_ui/ui/screens/menu_screen/menu_screen.dart';
import 'package:pin_auth_ui/ui/shared_widgets/digit_keyboard/btn_delete.dart';
import 'package:pin_auth_ui/ui/shared_widgets/digit_keyboard/btn_digit.dart';

class DigitKeyboard extends StatelessWidget {
  final PinProvider provider;
  final bool isSetup;

  DigitKeyboard({
    this.provider,
    this.isSetup,
  });

  void showDialog(BuildContext context, String message) {
    if (message != null) {
      if (message == AUTH_SUCCESS) {
        VoidCallback onTap = () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return MenuScreen();
          }));
        };
        provider.message = null;
        DialogService.instance.show(DefaultAlertDialog(
          context: context,
          message: message,
          withBtnOk: true,
          onTapOk: onTap,
        ).show());
      } else {
        provider.message = null;
        DialogService.instance.show(DefaultAlertDialog(
          context: context,
          message: message,
        ).show());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            BtnDigit(
              label: '1',
              onTap: () async {
                if (isSetup) {
                  provider.addToSetupPin(1);
                } else {
                  provider.addToPin(1);
                }
                await Future.delayed(Duration(milliseconds: 100));
                showDialog(context, provider.message);
              },
            ),
            BtnDigit(
              label: '2',
              onTap: () async {
                if (isSetup) {
                  provider.addToSetupPin(2);
                } else {
                  provider.addToPin(2);
                }
                await Future.delayed(Duration(milliseconds: 100));
                showDialog(context, provider.message);
              },
            ),
            BtnDigit(
              label: '3',
              onTap: () async {
                if (isSetup) {
                  provider.addToSetupPin(3);
                } else {
                  provider.addToPin(3);
                }
                await Future.delayed(Duration(milliseconds: 100));
                showDialog(context, provider.message);
              },
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            BtnDigit(
              label: '4',
              onTap: () async {
                if (isSetup) {
                  provider.addToSetupPin(4);
                } else {
                  provider.addToPin(4);
                }
                await Future.delayed(Duration(milliseconds: 100));
                showDialog(context, provider.message);
              },
            ),
            BtnDigit(
              label: '5',
              onTap: () async {
                if (isSetup) {
                  provider.addToSetupPin(5);
                } else {
                  provider.addToPin(5);
                }
                await Future.delayed(Duration(milliseconds: 100));
                showDialog(context, provider.message);
              },
            ),
            BtnDigit(
              label: '6',
              onTap: () async {
                if (isSetup) {
                  provider.addToSetupPin(6);
                } else {
                  provider.addToPin(6);
                }
                await Future.delayed(Duration(milliseconds: 100));
                showDialog(context, provider.message);
              },
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            BtnDigit(
              label: '7',
              onTap: () async {
                if (isSetup) {
                  provider.addToSetupPin(7);
                } else {
                  provider.addToPin(7);
                }
                await Future.delayed(Duration(milliseconds: 100));
                showDialog(context, provider.message);
              },
            ),
            BtnDigit(
              label: '8',
              onTap: () async {
                if (isSetup) {
                  provider.addToSetupPin(8);
                } else {
                  provider.addToPin(8);
                }
                await Future.delayed(Duration(milliseconds: 100));
                showDialog(context, provider.message);
              },
            ),
            BtnDigit(
              label: '9',
              onTap: () async {
                if (isSetup) {
                  provider.addToSetupPin(9);
                } else {
                  provider.addToPin(9);
                }
                await Future.delayed(Duration(milliseconds: 100));
                showDialog(context, provider.message);
              },
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 60.0,
              width: 60.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            ),
            BtnDigit(
              label: '0',
              onTap: () async {
                if (isSetup) {
                  provider.addToSetupPin(0);
                } else {
                  provider.addToPin(0);
                }
                await Future.delayed(Duration(milliseconds: 100));
                showDialog(context, provider.message);
              },
            ),
            BtnDelete(
              onTap: () {
                if (isSetup) {
                  provider.deleteSetupPin();
                } else {
                  provider.deletePin();
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
