import 'package:examples_application/Theme/CustomColors.dart';
import 'package:flutter/material.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: Center(
        child: Container(
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
