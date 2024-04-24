import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_1/dashboard/controller/dashboard-state.dart';

class DashboardController extends Cubit<DashboardChangeState> {
  DashboardController() : super(DashboardChangeState());

  int SelectedTapIndex = 0;
  final PageController pageController = PageController();

  void OnChangeTapIndex(int index) {
    SelectedTapIndex = index;
    pageController.jumpToPage(SelectedTapIndex);
    emit(DashboardChangeState());
  }
}
