import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/Page/RegisterPage.dart';

Widget buildLogo(BuildContext context) {
    return Image.asset(
      'image/logo.png',
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.height * 0.4,
    );
  }

  Widget buildForgotPasswordButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () {
            // Kosong ngga ada isi nya nih
          },
          child: const Text("Forgot password?",
              style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }

  Widget buildLoginButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.89,
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          // Kosong ngga ada isi nya nih
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(Colors.black),
        ),
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  Widget buildRegisterButton() {
    return TextButton(
      onPressed: () {
        Get.off(const RegisterPage());
      },
      child: RichText(
        text: const TextSpan(
          text: "Don't have an account? ",
          style: TextStyle(color: Colors.white),
          children: <TextSpan>[
            TextSpan(
              text: "Register here",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }