import 'dart:async';

import 'package:flutter/material.dart';
import 'package:poupaai_v2/modeles/login/presentation/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () async {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xFF00A9FF),
        child: const Text(
          'PoupaAí',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
    );
  }
}
