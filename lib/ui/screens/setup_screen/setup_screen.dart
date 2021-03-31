import 'package:flutter/material.dart';
import 'package:pin_auth_ui/provider/pin_provider.dart';
import 'package:pin_auth_ui/res/app_text_styles.dart';
import 'package:pin_auth_ui/res/strings.dart';
import 'package:pin_auth_ui/ui/layouts/main_layout.dart';
import 'package:pin_auth_ui/ui/shared_widgets/digit_keyboard/digit_keyboard.dart';
import 'package:pin_auth_ui/ui/shared_widgets/dot_indicator/dot_indicator.dart';

import 'package:provider/provider.dart';

class SetupScreen extends StatefulWidget {
  @override
  _SetupScreenState createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<PinProvider>(context);

    return MainLayout(
      child: Column(
        children: [
          const Spacer(),
          Text(
            provider.isFirstEnter ? CREATE : RE_ENTER,
            style: AppTextStyles.greyText,
          ),
          const SizedBox(height: 30),
          DotIndicator(
            progress: provider.isFirstEnter ? provider.setupPin.length : provider.confirmPin.length ,
          ),
          const Spacer(),
          DigitKeyboard(
            provider: provider,
            isSetup: true,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
