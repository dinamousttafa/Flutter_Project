import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_1/aboarding/view/page/onboarding_page.dart';

import 'login.dart';
import 'SignUp.dart';
import 'vir.dart';
import 'forget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool onboarding = sharedPreferences.getBool('onboarding') ?? false;

  runApp(MaterialApp(
    title: 'Login App',
    home: onboarding ? LoginPage() : const OnBoardingPage(),
  ));
}
