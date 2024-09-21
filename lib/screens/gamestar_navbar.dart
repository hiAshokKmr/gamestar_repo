

import 'package:flutter/material.dart';

class GameStarBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const GameStarBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Container(
          height: 50,
          color: Colors.black12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(0, 'assets/white_images/white_home.png', 'assets/brown_images/brown_home.png', 'Home'),
              _buildNavItem(1, 'assets/white_images/white_task.png', 'assets/brown_images/brown_task.png', 'Task'),
              _buildNavItem(2, 'assets/white_images/white_friends.png', 'assets/brown_images/brown_friends.png', 'Friends'),
              _buildNavItem(3, 'assets/white_images/white_wallet.png', 'assets/brown_images/brown_wallet.png', 'Wallet'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, String whiteIconImagePath, String brownIconImagePath, String labelText) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: AnimatedAlign(
        duration: const Duration(milliseconds:500),
        alignment: isSelected?Alignment.topCenter:Alignment.bottomCenter,
        curve: Curves.bounceOut,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon image
            Image.asset(
              isSelected ? brownIconImagePath : whiteIconImagePath,
              width: isSelected? 24 :20,
              height: isSelected?24:20,
            ),
            const SizedBox(height: 4),
            // Gradient text label
            isSelected
                ? ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                          colors: [Color(0xFFD77321), Color(0xFF4D2402)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          ).createShader(bounds),
                        child: Text(
                          labelText,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
            )
                : Text(
              labelText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
