import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Center(
        child: Text('WalletPage'),
      ),
    );
  }
}
