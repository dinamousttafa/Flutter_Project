import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_1/aboarding/controller/onboarding_controller_cubit.dart';

class OnboardingBody extends StatelessWidget {
   OnboardingBody({super.key,required this.controller});
  OnboardingControllercubit controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Welcome to Our App"),
        Expanded(
          child: BlocProvider<OnboardingControllercubit>.value(
            value: controller,
            child: BlocBuilder<OnboardingControllercubit,
                OnboardingControllerState>(
              builder: (context, state) {
                OnboardingControllercubit controller =
                    context.read<OnboardingControllercubit>();

                return PageView(
                  controller: controller.pageController,
                  children: List.generate(controller.data.length, (index) {
                    return Column(
                      children: [
                        Image.asset(controller.data[index].image),
                        Text(
                          controller.data[index].title,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: controller.data[index].color),
                        ),
                        Text(
                          controller.data[index].subtitle,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    );
                  }),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
