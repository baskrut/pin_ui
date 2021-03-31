import 'package:flutter/material.dart';
import 'package:pin_auth_ui/res/strings.dart';
import 'package:pin_auth_ui/ui/layouts/main_layout.dart';
import 'package:pin_auth_ui/ui/screens/enter_screen/enter_screen.dart';
import 'package:pin_auth_ui/ui/screens/setup_screen/setup_screen.dart';
import 'package:pin_auth_ui/ui/shared_widgets/btn_navigation.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BtnNavigation(
            label: ENTER_SCREEN,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return EnterScreen();
              }));
            },
          ),
          BtnNavigation(
            label: SETUP_SCREEN,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return SetupScreen();
              }));
            },
          ),
        ],
      )),
    );
  }
}
