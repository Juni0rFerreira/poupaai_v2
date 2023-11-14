import 'package:flutter/material.dart';
import 'package:poupaai_v2/common/widgets_global/notification_widget_custom.dart';
import 'package:poupaai_v2/modeles/homeview/presentation/widgets/greetings_widget_custom.dart';

class AppHeader extends StatefulWidget {
  final String? title;
  final Widget? child;
  final bool hasOptions;
  final bool hasBack;

  const AppHeader({
    super.key,
    this.title,
    this.child,
    this.hasOptions = false,
    this.hasBack = false,
  });

  @override
  State<AppHeader> createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {
  Widget get _innerHeader => widget.title != null
      ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: widget.hasBack
                    ? const Icon(
                        Icons.arrow_back_ios_new,
                        size: 16,
                        color: Colors.white,
                      )
                    : const SizedBox(width: 16)),
            Text(
              widget.title!,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            widget.hasOptions
                ? const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                : const SizedBox(width: 16),
          ],
        )
      : const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GreetingsWidget(),
            NotificationWidget(),
          ],
        );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF429690),
                  Color(0xFF2A7C76),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(500, 30),
                bottomRight: Radius.elliptical(500, 30),
              ),
            ),
            height: 287,
          ),
        ),
        Positioned(
          left: 24.0,
          right: 24.0,
          top: 74.0,
          child: _innerHeader,
        ),
      ],
    );
  }
}
