import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/App/Component/Menu/ProfileMethod.dart';
import 'package:project_pas/App/View/Auth/LoginPage.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: Container(
        margin: const EdgeInsets.only(bottom: 75, top: 75),
        child: Column(
          children: [
            ProfileAvatar(),
            const SizedBox(height: 20),
            const Text(
              'Fardan Athilla Haidar',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            const Text(
              'athillahaidar@gmail.com',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 40),
            CustomButton(
              icon: Icons.settings,
              label: 'Account Settings',
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.public,
              label: 'Language',
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.policy,
              label: 'Privacy Policy',
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.logout,
              label: 'Log Out',
              onPressed: () {
                Get.offAll(LoginPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
