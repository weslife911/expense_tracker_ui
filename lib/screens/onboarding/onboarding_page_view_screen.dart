// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:expense_tracker_ui/screens/onboarding/onboarding_screen_one.dart';
import 'package:expense_tracker_ui/screens/onboarding/onboarding_screen_three.dart';
import 'package:expense_tracker_ui/screens/onboarding/onboarding_screen_two.dart';
import 'package:flutter/material.dart';

class OnBoardingPageViewScreen extends StatefulWidget {
  const OnBoardingPageViewScreen({super.key});

  @override
  State<OnBoardingPageViewScreen> createState() => _OnBoardingPageViewScreenState();
}

class _OnBoardingPageViewScreenState extends State<OnBoardingPageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        OnBoardingScreenOne(),
        OnBoardingScreenTwo(),
        OnBoardingScreenThree()
      ]
    );
  }
}