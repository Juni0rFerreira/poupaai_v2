import 'package:flutter/material.dart';

class ProfilerPage extends StatefulWidget {
  const ProfilerPage({super.key});

  @override
  State<ProfilerPage> createState() => _ProfilerPageState();
}

class _ProfilerPageState extends State<ProfilerPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Center(
        child: Text('ProfilerPage'),
      ),
    );
  }
}