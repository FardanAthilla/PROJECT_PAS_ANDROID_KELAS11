import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black, // Atur latar belakang menjadi hitam
      body: Center(
        child: Text(
          'NewsPage',
          style: TextStyle(color: Colors.white), // Atur teks menjadi putih
        ),
      ),
    );
  }
}
