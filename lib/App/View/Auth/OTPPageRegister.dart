import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:project_pas/App/Component/Auth/OTPMethodPaswword.dart';

class OTPPageRegister extends StatefulWidget {
  const OTPPageRegister({Key? key}) : super(key: key);

  @override
  _OTPPageRegisterState createState() => _OTPPageRegisterState();
}

class _OTPPageRegisterState extends State<OTPPageRegister> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Verify your account',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Enter your 4-digit code sent via email',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            Pinput(
              defaultPinTheme: defaultPinTheme,
              showCursor: true,
              // controller: , controller buat ngirim
            ),
            const SizedBox(height: 50),
            buildSubmitButton(context),
          ],
        ),
      ),
    );
  }
}