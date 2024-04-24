import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_1/verification/controller/verification_cubit.dart';
class VerivicationPage extends StatelessWidget {
  const VerivicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerificationCubit(),
      child: BlocBuilder<VerificationCubit,VerificationState>(
        builder: (context,State){
        final  VerificationCubit cubit = context.read<VerificationCubit>();
          return Scaffold(
            appBar: AppBar(),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Enter Your Code"),
                PinCodeTextField(
                      mainAxisAlignment: MainAxisAlignment.center,
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.green.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 5,
                      obscureText: false,
                      obscuringCharacter: '*',
                      animationType: AnimationType.fade,
                      validator: (v) {
                        if (v!.length < 3) {
                          return "I'm from validator";
                        } else {
                          return null;
                        }
                      },
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.circle,
                       
                        fieldHeight: MediaQuery.of(context).size.width/6,
                        fieldWidth: MediaQuery.of(context).size.width/6,
                        fieldOuterPadding: EdgeInsets.only(right: MediaQuery.of(context).size.width/30),
                        activeFillColor:Colors.white,
                        inactiveColor: Colors.black,
                        inactiveFillColor: Colors.grey,
                        activeColor: Colors.black,
                        selectedFillColor: Colors.black,
                      ),
                      cursorColor: Colors.white,
                      animationDuration: const Duration(milliseconds: 300),
                      textStyle: const TextStyle(fontSize: 20, height: 1.6),
                      backgroundColor: Colors.blue.shade50,
                      enableActiveFill: true,
                   
                      controller: cubit.pincodecontroller,
                      keyboardType: TextInputType.number,
                      boxShadows: const [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.black12,
                          blurRadius: 10,
                        )
                      ],
                      onCompleted: (v) {
                        debugPrint("Completed");
                      },
                      // onTap: () {
                      //   print("Pressed");
                      // },
                      onChanged: (value) {
                       
                      },
                    
                      
                    ),
                    IconButton(onPressed: cubit.onTapConfirm, icon: const Icon(Icons.done))
              ],
            ),
          );
        },
        ),

      

    );
  }
}
