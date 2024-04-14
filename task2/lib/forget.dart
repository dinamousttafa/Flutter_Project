import 'package:flutter/material.dart';
import 'login.dart';
import 'SignUp.dart';
import 'vir.dart';

class ResetPage extends StatefulWidget {
  @override
  _ResetPageState createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Add form key for form validation

  // Validation function for email
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty || !value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  // Function to send password reset email
  Future<void> _sendPasswordResetEmail(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      // Proceed with sending reset email
      // This part was removed because it's Firebase specific

      // Open the new page for password reset confirmation
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => VerificationWidget()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forgot Password')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Enter your email address to receive a password reset email.'),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: validateEmail, // Validate email
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  _sendPasswordResetEmail(context);
                },
                child: Text('Reset Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
