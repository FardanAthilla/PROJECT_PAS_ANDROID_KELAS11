import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/App/View/Auth/LoginPage.dart';

Widget buildTextField(String hintText, IconData icon,
    {bool isPassword = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextField(
      style: const TextStyle(color: Colors.white),
      obscureText: isPassword,
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

Widget buildRegisterButton(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.89,
    height: 40,
    child: ElevatedButton(
      onPressed: () {
        Get.offAll(const LoginPage());
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        foregroundColor: MaterialStateProperty.all(Colors.black),
      ),
      child: const Text(
        'Reset Password',
        style: TextStyle(fontSize: 20),
      ),
    ),
  );
}

Widget buildLoginButton() {
  return TextButton(
    onPressed: () {
      Get.off(const LoginPage());
    },
    child: RichText(
      text: const TextSpan(
        text: "Already have an account? ",
        style: TextStyle(color: Colors.white),
        children: <TextSpan>[
          TextSpan(
            text: "Login",
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
