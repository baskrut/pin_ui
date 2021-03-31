import 'package:flutter/material.dart';
import 'package:pin_auth_ui/provider/pin_provider.dart';
import 'package:pin_auth_ui/ui/screens/menu_screen/menu_screen.dart';
import 'package:provider/provider.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => PinProvider(),
      child: MaterialApp(
        home: MenuScreen(),
      ),
    );
  }
}
