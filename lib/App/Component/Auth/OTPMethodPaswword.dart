import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/App/View/Auth/SetPasswordPage.dart';

Widget buildOTPTextField(int index, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Container(
      width: 40,
      child: TextField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white),
        decoration: const InputDecoration(
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty && index < 4) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    ),
  );
}

Widget buildSubmitButton(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.89,
    height: 40,
    child: ElevatedButton(
      onPressed: () {
        Get.to((SetPasswordPage()));
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        foregroundColor: MaterialStateProperty.all(Colors.black),
      ),
      child: const Text(
        'Verify',
        style: TextStyle(fontSize: 20),
      ),
    ),
  );
}
