import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/App/View/Auth/OTPPagePassword.dart';
import 'package:project_pas/App/View/Auth/RegisterPage.dart';

Widget buildTextField(String hintText, IconData icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        prefixIconColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget buildRegisterButton() {
  return TextButton(
    onPressed: () {
      Get.to(const RegisterPage());
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

  Widget buildButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.89,
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          Get.to(OTPPagePassword());
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(Colors.black),
        ),
        child: const Text(
          'Continue',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
