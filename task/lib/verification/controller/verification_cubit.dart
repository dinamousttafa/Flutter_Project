import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit() : super(VerificationInitial());
  TextEditingController pincodecontroller = TextEditingController();

  final String validCode = '22222';

  void onTapConfirm() {
    if (pincodecontroller.text == validCode) {
      print("valid");
    } else {
      print("invalid");
    }
  }
}
