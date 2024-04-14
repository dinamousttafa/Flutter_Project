import 'package:flutter/material.dart';

class onboardingModel {
  late String image, title, subtitle;
  late Color color;
  onboardingModel({
    required this.image,
    required this.title,
    required this.subtitle,
    this.color = Colors.black,
  });
}
