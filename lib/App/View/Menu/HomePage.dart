import 'package:flutter/material.dart';
import 'package:project_pas/App/Component/Menu/HomeMethod.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildHeader(),
            buildCategoryGrid(),
            buildRecommendationList(),
          ],
        ),
      ),
    );
  }
}