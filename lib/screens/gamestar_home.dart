import 'package:flutter/material.dart';

import 'friends_screen.dart';
import 'gamestar_navbar.dart';
import 'home_screen.dart';
import 'task_screen.dart';
import 'wallet_screen.dart';

class GameStarHomePage extends StatefulWidget{
  const GameStarHomePage({super.key});

  @override
  GameStarHomePageState createState()=>GameStarHomePageState();
}

class GameStarHomePageState extends State<GameStarHomePage>{

  int selectedPage=0;

List<Widget> pages=[
  const HomeScreen(),
   TaskScreen(),
  const FriendsScreen(),
  const WalletScreen()
];

void onPageTapped(int page){
  setState(() {
    selectedPage=page;
  });
}

@override
Widget build(BuildContext context){
  return SafeArea(
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/game_star_bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(child: pages[selectedPage]),
          GameStarBottomNavBar(
            selectedIndex:selectedPage,
            onItemTapped:onPageTapped,
          )
          // Page content
        ],
      ),
      ),
  );
}}











