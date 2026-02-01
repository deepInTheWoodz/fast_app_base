import 'package:flutter/widgets.dart';

extension AnimationControllerExtension on AnimationController {
  void animateToTheEnd() {
    animateTo(1.0, duration: Duration(seconds: 1));
  }

  void animateToTheBeginning() {
    animateTo(0, duration: Duration(seconds: 1));
  }
}
