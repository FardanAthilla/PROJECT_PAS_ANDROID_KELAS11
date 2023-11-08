import 'package:flutter/material.dart';
import 'package:project_pas/App/Component/Auth/SetPasswordMethod.dart';

class SetPasswordPage extends StatefulWidget {
  const SetPasswordPage({Key? key}) : super(key: key);

  @override
  _SetPasswordPageState createState() => _SetPasswordPageState();
}

class _SetPasswordPageState extends State<SetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Set New Password',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Reset Your Password Here',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 50),
            buildTextField('Password', Icons.lock, isPassword: true),
            const SizedBox(height: 10),
            buildTextField('Confirm Password', Icons.lock, isPassword: true),
            const SizedBox(height: 50),
            buildRegisterButton(context),
          ],
        ),
      ),
    );
  }
}
