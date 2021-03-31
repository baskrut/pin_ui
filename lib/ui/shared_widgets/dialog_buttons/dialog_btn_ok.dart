import 'package:flutter/material.dart';
import 'package:pin_auth_ui/res/app_colors.dart';
import 'package:pin_auth_ui/res/strings.dart';

class DialogBtnOk extends StatelessWidget {
  final VoidCallback onTap;

  DialogBtnOk({this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
            child: Text(
          OK,
          style: TextStyle(
            color: AppColors.kBlue,
            fontSize: 18,
          ),
        )));
  }
}
