import 'package:flutter/material.dart';
import 'package:project_pas/App/Component/Menu/HomeMethod.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildRecommendationList(),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF0F0F0F),
      elevation: 0,
      actions: [
        IconButton(
          icon: Icon(Icons.more_vert), 
          onPressed: () {
            
          },
        ),
      ],
    );
  }
}
