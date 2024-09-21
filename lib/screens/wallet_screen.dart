import 'package:flutter/material.dart';

import '../widgets/elevated_button.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:16,bottom:60,left: 16,right: 16),
        child: Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/walletscreen_gif.gif', 
              ),
              const SizedBox(height: 24),
              const Text(
                'Levelling up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Connect your wallet to access upcoming crypto features.\nOur team is working hard to bring them to you soon!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedCustom(
                buttonText: "Connect Wallet",
                onPressed: (){},
                buttonClicked: false,
                indicatorColor:const Color(0xFFD3d3d3),
              ),
            ],
          ),
        ),
    );
  }
}
