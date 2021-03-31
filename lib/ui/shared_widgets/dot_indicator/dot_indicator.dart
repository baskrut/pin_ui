import 'package:flutter/material.dart';
import 'package:pin_auth_ui/ui/shared_widgets/dot_indicator/progress_dot.dart';

class DotIndicator extends StatelessWidget {
  final int progress;

  DotIndicator({
    this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          ProgressDot(
            isBlank: progress < 1,
          ),
          ProgressDot(
            isBlank: progress < 2,
          ),
          ProgressDot(
            isBlank: progress < 3,
          ),
          ProgressDot(
            isBlank: progress < 4,
          ),
        ],
      ),
    );
  }
}
