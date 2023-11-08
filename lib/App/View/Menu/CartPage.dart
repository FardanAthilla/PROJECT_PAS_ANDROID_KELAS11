import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Recommendation',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: games.length,
              itemBuilder: (context, index) {
                final game = games[index];
                return Container(
                  child: ListTile(
                    leading: Image.asset(
                      game.imagePath,
                    ),
                    title: Text(
                      game.name,
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${game.genre}",
                          style: TextStyle(color: Colors.white.withOpacity(0.8)),
                        ),
                        Text("${game.price}",
                            style: TextStyle(color: Colors.white.withOpacity(0.8))
                        )
                      ],
                    ),
                    contentPadding: EdgeInsets.only(bottom: 15,left: 15),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Game {
  final String name;
  final String genre;
  final String price;
  final String imagePath;

  Game({
    required this.name,
    required this.genre,
    required this.price,
    required this.imagePath,
  });
}

final games = [
  Game(
    name: "PUBG",
    genre: "Open World · FPS",
    price: "Free",
    imagePath: 'image/banner.png',
  ),
  Game(
    name: "Stumble Guys",
    genre: "Parkour · Multiplayer",
    price: "Free",
    imagePath: 'image/banner.png',
  ),
  Game(
    name: "Girls' Connect: Idle RPG",
    genre: "Idle · Gacha",
    price: "Rp 100.000,00",
    imagePath: 'image/banner.png',
  ),

  Game(name: "PUBG2", genre: "Open World · FPS", rating: 4.0, price: "Free", imagePath: 'assets/banner.png'),
  Game(name: "Stumble Guys", genre: "Parkour · Multiplayer", rating: 3.9, price: "Free", imagePath: 'assets/banner.png'),
  Game(name: "Girls' Connect: Idle RPG", genre: "Idle · Gacha", rating: 4.2, price: "Rp 100.000,00", imagePath: 'assets/banner.png'),
];

