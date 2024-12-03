import 'dart:async';

import 'package:expense_tracker_ui/shared/const/color.dart';
import 'package:expense_tracker_ui/shared/const/fonts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      context.go("/onboard-pg-view");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.violet100,
      body: Center(
        child: Text(
          "montra",
          style: AppFontStyle.interBold.copyWith(color: AppColors.pureWhite, fontSize: 56)
        ),
      ),
    );
  }
}
