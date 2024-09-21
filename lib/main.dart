import 'package:flutter/material.dart';
import 'package:gamestar/screens/gamestar_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GameStar',
      theme: ThemeData(
       useMaterial3: true,
          colorScheme:ColorScheme.fromSeed(seedColor: Colors.transparent).copyWith(background: Colors.transparent),
      ),
     home: const GameStarHomePage(),
    );
  }
}





