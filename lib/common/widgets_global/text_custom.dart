import 'dart:developer';

import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String textOne;
  final String textTwo;
  const TextCustom({
    super.key,
    required this.textOne,
    required this.textTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textOne,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        InkWell(
          onTap: () {
            log('TextCustom foi clicado!');
          },
          child: Text(
            textTwo,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF429690),
            ),
          ),
        ),
      ],
    );
  }
}
