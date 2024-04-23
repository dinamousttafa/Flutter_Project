import 'package:flutter/material.dart';
import 'package:task_1/aboarding/controller/onboarding_controller_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_1/aboarding/view/component/onboarding_body.dart';
import 'package:task_1/aboarding/view/component/onboarding_buttoms.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: BlocProvider<OnboardingControllercubit>(
            create: (context) => OnboardingControllercubit(),
            child: BlocBuilder<OnboardingControllercubit,
                OnboardingControllerState>(
              builder: (context, state) {
                OnboardingControllercubit controller =
                    context.read<OnboardingControllercubit>();
            return  Scaffold(
                body: OnboardingBody(controller: controller,),
                bottomNavigationBar: Onboardingbutton(controller: controller,));
          },
        ),
      ),
    );
  }
}
