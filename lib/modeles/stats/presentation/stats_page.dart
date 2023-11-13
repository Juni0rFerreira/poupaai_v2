import 'package:flutter/material.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Center(
        child: Text('StatsPage'),
      ),
    );
  }
}