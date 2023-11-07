import 'package:flutter/material.dart';
import 'package:project_pas/App/Component/Auth/RegisterMethod.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Create Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Register to continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 80),
                buildTextField('Username', Icons.person),
                const SizedBox(height: 10),
                buildTextField('Email', Icons.email),
                const SizedBox(height: 10),
                buildTextField('Password', Icons.lock, isPassword: true),
                const SizedBox(height: 10),
                buildTextField('Confirm Password', Icons.lock, isPassword: true),
                const SizedBox(height: 80),
                buildRegisterButton(context),
                buildLoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
