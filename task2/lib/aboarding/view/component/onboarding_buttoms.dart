import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_1/aboarding/controller/onboarding_controller_cubit.dart';

class Onboardingbutton extends StatelessWidget {
  Onboardingbutton({super.key, required this.controller});
  OnboardingControllercubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingControllercubit>.value(
      value: controller,
      child: BlocBuilder<OnboardingControllercubit, OnboardingControllerState>(
        builder: (context, state) {
          OnboardingControllercubit controller =
              context.read<OnboardingControllercubit>();
          return SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      controller.oncallskip(context);
                    },
                    child: const Text("Skip")),
                TextButton(
                    onPressed: controller.onchangetonext,
                    child: const Text("Next"))
              ],
            ),
          );
        },
      ),
    );
  }
}
