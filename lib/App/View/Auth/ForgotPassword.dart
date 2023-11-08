import 'package:flutter/material.dart';
import 'package:project_pas/App/Component/Auth/ForgotPasswordMethod.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Reset Password',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Enter the email address associated with your account and we\'ll send you a code OTP to reset your password.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                textAlign:
                    TextAlign.center,
              ),
            ),
            const SizedBox(height: 50),
            buildTextField('Email', Icons.email),
            const SizedBox(height: 50),
            buildButton(context),
            buildRegisterButton(),
          ],
        ),
      ),
    );
  }
}
