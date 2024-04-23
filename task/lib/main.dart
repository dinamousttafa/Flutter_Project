import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_1/aboarding/view/page/onboarding_page.dart';
import 'package:task_1/verification/view/page/verification_page.dart';
import 'login.dart';
import 'SignUp.dart';
import 'vir.dart';
import 'forget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool onBoarding = sharedPreferences.getBool('onboarding') ?? false;


  runApp(MaterialApp(
    title: 'Login App',
    home: onBoarding ? LoginPage() : const OnBoardingPage(),
  ));
}

class MyRoutes {
  static List<Route> initRoutes = [
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const OnBoardingPage(),
    ),
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => VerivicationPage(),
    ),
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => LoginPage(),
    ),
    //   ),
  ];

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/obording':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => OnBoardingPage(),
        );

      case '/Login':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => LoginPage(),
        );
      case '/verification':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => VerivicationPage(),
        );
      case '/forget':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => ResetPage(),
        );
      case '/reset':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => ResetPage(),
        );
      case '/verfication':
        final List data = settings.arguments as List;
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => VerificationWidget(
            userName: data[0] as String,
          ),
        );
      case '/home':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => LoginPage(),
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const SignupPage(),
        );
    }
  }
}