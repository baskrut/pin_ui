import 'package:flutter/material.dart';
import 'package:pin_auth_ui/services/dialog_service/dialog_interface.dart';
import 'package:pin_auth_ui/ui/shared_widgets/dialog_buttons/dialog_btn_ok.dart';

class DefaultAlertDialog extends StatelessWidget implements DialogInterface {
  final BuildContext context;
  final String message;
  final bool withBtnOk;
  final onTapOk;

  DefaultAlertDialog({
    @required this.context,
    @required this.message,
    this.withBtnOk = false,
    this.onTapOk,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(message),
      actions: [
        withBtnOk
            ? Center(
                child: DialogBtnOk(
                  onTap: onTapOk,
                ),
              )
            : SizedBox(),
      ],
    );
  }

  @override
  Future show() {
    return showDialog(context: context, builder: (ctx) => build(ctx));
  }
}
