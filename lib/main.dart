import 'package:expense_tracker_ui/screens/authentication/forgot_pwd_email_sent_screen.dart';
import 'package:expense_tracker_ui/screens/authentication/forgot_pwd_screen.dart';
import 'package:expense_tracker_ui/screens/authentication/otp_verification_screen.dart';
import 'package:expense_tracker_ui/screens/authentication/signin_screen.dart';
import 'package:expense_tracker_ui/screens/authentication/signup_screen.dart';
import 'package:expense_tracker_ui/screens/onboarding/launch_screen.dart';
import 'package:expense_tracker_ui/screens/onboarding/onboarding_page_view_screen.dart';
import 'package:expense_tracker_ui/screens/onboarding/onboarding_screen_one.dart';
import 'package:expense_tracker_ui/screens/onboarding/onboarding_screen_three.dart';
import 'package:expense_tracker_ui/screens/onboarding/onboarding_screen_two.dart';
import 'package:expense_tracker_ui/shared/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AuthController(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
      ),
    );
  }
}

final GoRouter _router =
    GoRouter(initialLocation: "/launchScreen", routes: <RouteBase>[
  GoRoute(
    path: "/launchScreen",
    name: "/launchScreen",
    builder: (context, state) {
      return const LaunchScreen();
    },
  ),
  GoRoute(
    path: "/onboard-1",
    name: "/onboard-1",
    builder: (context, state) {
      return const OnBoardingScreenOne();
    },
  ),
  GoRoute(
    path: "/onboard-2",
    name: "/onboard-2",
    builder: (context, state) {
      return const OnBoardingScreenTwo();
    },
  ),
  GoRoute(
    path: "/onboard-3",
    name: "/onboard-3",
    builder: (context, state) {
      return const OnBoardingScreenThree();
    },
  ),
  GoRoute(
    path: "/onboard-pg-view",
    name: "/onboard-pg-view",
    builder: (context, state) {
      return const OnBoardingPageViewScreen();
    },
  ),
  GoRoute(
    path: "/signup",
    name: "/signup",
    builder: (context, state) {
      return const SignUpScreen();
    },
  ),
  GoRoute(
    path: "/login",
    name: "/login",
    builder: (context, state) {
      return const SignInScreen();
    },
  ),
  GoRoute(
    path: "/otp-verify",
    name: "/otp-verify",
    builder: (context, state) {
      return const OTPVerificationScreen();
    },
  ),
  GoRoute(
    path: "/forget-pwd",
    name: "/forget-pwd",
    builder: (context, state) {
      return const ForgotPWDScreen();
    },
  ),
  GoRoute(
    path: "/email-sent",
    name: "/email-sent",
    builder: (context, state) {
      return const PwdSentSuccessScreen();
    },
  ),
]);
