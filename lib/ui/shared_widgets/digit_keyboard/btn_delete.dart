import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_auth_ui/ui/shared_widgets/unsplash_inkwell.dart';

class BtnDelete extends StatelessWidget {
  final VoidCallback onTap;

  BtnDelete({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: UnsplashInkWell(
        onTap: onTap,
        child: Icon(CupertinoIcons.delete_left),
      ),
    );
  }
}
