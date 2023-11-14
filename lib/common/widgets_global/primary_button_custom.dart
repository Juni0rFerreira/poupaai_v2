import 'dart:developer';
import 'package:flutter/material.dart';

class PrimaryButtonCustom extends StatelessWidget {
  final String text;

  const PrimaryButtonCustom({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {
          log('Botão clicado');
        },
        child: Container(
          alignment: Alignment.center,
          height: 64,
          width: 358,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF429690),
                    Color(0xFF2A7C76),
              ],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
