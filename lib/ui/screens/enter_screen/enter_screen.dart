import 'package:flutter/material.dart';
import 'package:pin_auth_ui/provider/pin_provider.dart';
import 'package:pin_auth_ui/res/app_text_styles.dart';
import 'package:pin_auth_ui/res/strings.dart';
import 'package:pin_auth_ui/ui/layouts/main_layout.dart';
import 'package:pin_auth_ui/ui/shared_widgets/digit_keyboard/digit_keyboard.dart';
import 'package:pin_auth_ui/ui/shared_widgets/dot_indicator/dot_indicator.dart';
import 'package:provider/provider.dart';

class EnterScreen extends StatefulWidget {
  @override
  _EnterScreenState createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<PinProvider>(context);

    return MainLayout(
      child: Column(
        children: [
          const Spacer(),
          Text(
            ENTER,
            style: AppTextStyles.greyText,
          ),
          const SizedBox(height: 30),
          DotIndicator(
            progress: provider.pin.length,
          ),
          const Spacer(),
          DigitKeyboard(
            provider: provider,
            isSetup: false,
          ),
          Spacer()
        ],
      ),
    );
  }
}
