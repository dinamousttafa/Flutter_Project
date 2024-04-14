import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class RegistrationCubit extends Cubit<RegistrationState>{
  RegistrationCubit(): super(RegistrationInitial());
  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  TextEditingController _usernameController=TextEditingController();


  GlobalKey formKey= GlobalKey<FormState>();


  void onPressedConfirmedButton(){

    
  }
}
