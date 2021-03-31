import 'package:flutter/material.dart';
import 'file:///C:/Users/AppVesto/AndroidStudioProjects/pin_auth_ui/lib/res/app_colors.dart';
import 'package:pin_auth_ui/ui/shared_widgets/unsplash_inkwell.dart';

class BtnNavigation extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  BtnNavigation({
    this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return UnsplashInkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(color: AppColors.kPurple),
          color: AppColors.kWhite,
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 18.0,
              color: AppColors.kPurple,
            ),
          ),
        ),
      ),
    );
  }
}
