import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_1/aboarding/model/onboarding_model.dart';
import 'package:task_1/login.dart';

part 'onboarding_controller_state.dart';

class OnboardingControllercubit extends Cubit<OnboardingControllerState> {
  OnboardingControllercubit() : super(OnboardingControllerIntial());
  PageController pageController = PageController();

  void onchangetonext() {
    pageController.nextPage(
        duration: const Duration(microseconds: 250), curve: Curves.linear);
  }

  Future<void> oncallskip(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('onboarding', true);
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => LoginPage(),
      ),
    );
  }

  /*List images = [
    'assests/images/b.jpg',
    'assests/images/bbb (1).jpg',
    'assests/images/bbb (2).jpg',
  ];
  List titles = [
    'first',
    'second',
    'third',
  ];
  List color = [Colors.green, Colors.blue, Colors.red];
  List subtitles = [
    'first screen',
    'second screen',
    'third screen',
  ];*/
  List data = [
    onboardingModel(
      image: 'assests/images/b.jpg',
      title: 'first',
      subtitle: 'first screen',
      color: Colors.green,
    ),
    onboardingModel(
        image: 'assests/images/bbb (1).jpg',
        title: 'second',
        subtitle: 'second screen',
        color: Colors.blue),
    onboardingModel(
        image: 'assests/images/bbb (2).jpg',
        title: 'third',
        subtitle: 'third screen',
        color: Colors.red),
  ];
}
