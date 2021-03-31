

import 'package:flutter/material.dart';
import 'package:pin_auth_ui/res/app_colors.dart';
import 'package:pin_auth_ui/res/app_text_styles.dart';
import 'package:pin_auth_ui/ui/shared_widgets/unsplash_inkwell.dart';

class BtnDigit extends StatelessWidget {
  final VoidCallback onTap;
  final String label;

  BtnDigit({
    this.onTap,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return UnsplashInkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            color: AppColors.kGrey,
            borderRadius: BorderRadius.circular(60.0),
          ),
          child: Center(
            child: Text(
              label,
              style: AppTextStyles.greyText,
            ),
          ),
        ));
  }
}
