import 'package:flutter/material.dart';

import '../widgets/elevated_button.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:16,bottom:60,left: 16,right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const EmojiTextWidget(),
            const SizedBox(height: 16),
            const Text(
              'Invite friends Earn points',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            const StepperWidget(),
            const SizedBox(height: 40),
            ElevatedCustom(
              buttonText: "Invite Friends",
              onPressed: (){},
              buttonClicked: false,
              indicatorColor:const Color(0xFFD3d3d3),
            ),
          ],
        ),
    );
  }
}



class EmojiTextWidget extends StatelessWidget {
  const EmojiTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '👨‍👩‍👧‍👦',
      style: TextStyle(fontSize: 50),
    );
  }
}




class StepperWidget extends StatelessWidget {
  const StepperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        StepWidget(
          stepText: 'Share your invitation link',
          subText: 'Get a play pass for each friend',
        ),
        StepWidget(
          stepText: 'Your friends join GameStar',
          subText: 'And start farming points',
        ),
        StepWidget(
          stepText: 'Score 10% from bundles',
          subText: 'Plus an extra 2.5% from their referrals',
        ),
      ],
    );
  }
}




class StepWidget extends StatelessWidget {
  final String stepText;
  final String subText;

  const StepWidget({super.key, required this.stepText, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.circle, size: 10, color: Colors.white),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(stepText, style: const TextStyle(color: Colors.white, fontSize: 16)),
            const SizedBox(height: 4),
            Text(subText, style: const TextStyle(color: Colors.white54)),
          ],
        ),
      ],
    );
  }
}





