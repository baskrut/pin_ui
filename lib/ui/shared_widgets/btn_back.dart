import 'package:flutter/material.dart';
import 'package:pin_auth_ui/ui/shared_widgets/unsplash_inkwell.dart';

class BtnBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UnsplashInkWell(
      onTap: () {},
      child: Icon(Icons.arrow_back_ios_outlined),
    );
  }
}
