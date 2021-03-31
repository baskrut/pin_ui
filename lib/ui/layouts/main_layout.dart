import 'package:flutter/material.dart';
import 'package:pin_auth_ui/res/app_colors.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  MainLayout({this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kWhite,
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
