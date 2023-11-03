import 'package:flutter/material.dart';
import 'package:project_pas/Component/LoginMethod.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

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
                buildLogo(context),
                const Text(
                  'Sign in to continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 25),
                buildTextField('Username', Icons.person,),
                const SizedBox(height: 10),
                buildTextField('Password', Icons.lock,),
                buildForgotPasswordButton(),
                const SizedBox(height: 20),
                buildLoginButton(context),
                buildRegisterButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String hintText, IconData icon,) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        obscureText: hintText == 'Password' ? _obscureText : false,
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
          suffixIcon: hintText == 'Password'
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.white,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
