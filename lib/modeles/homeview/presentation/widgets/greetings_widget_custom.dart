import 'package:flutter/material.dart';

class GreetingsWidget extends StatelessWidget {
  const GreetingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Good Afternoon,',
          style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        Text(
          'Enjelin Morgeana',
          style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}