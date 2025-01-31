import 'package:flutter/material.dart';
import 'package:ftfl_technology_task/ui/screens/card_wallet_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardWalletScreen(),
    );
  }
}
