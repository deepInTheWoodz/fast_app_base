import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:ttoss/common/common.dart';
import 'package:ttoss/screen/main/s_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin {

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    // delay((){
      Nav.clearAllAndPush(const MainScreen());
    // }, 1500.ms);
    // }, const Duration(milliseconds: 1500));
  }


  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset('assets/image/splash/splash.png', width: 192, height: 192),);
  }
}

