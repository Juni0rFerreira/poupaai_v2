import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
        color: Colors.white.withOpacity(0.06),
      ),
      child: Stack(
        alignment: const AlignmentDirectional(0.5, -0.5),
        children: [
          const Icon(
            Icons.notifications_none_outlined,
            color: Colors.white,
          ),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(4.0),
            ),
          )
        ],
      ),
    );
  }
}