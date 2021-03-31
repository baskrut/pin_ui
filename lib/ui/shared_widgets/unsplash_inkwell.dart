import 'package:flutter/material.dart';
import 'package:pin_auth_ui/res/app_colors.dart';

class UnsplashInkWell extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  final Key key;

  UnsplashInkWell({
    this.onTap,
    this.child,
    this.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: AppColors.kTransparent,
        hoverColor: AppColors.kTransparent,
        highlightColor: AppColors.kTransparent,
        focusColor: AppColors.kTransparent,
        onTap: onTap,
        child: child);
  }
}
