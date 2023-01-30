import 'dart:ui';

import 'package:flutter/material.dart';

class WallpaperIcon extends StatelessWidget {
  const WallpaperIcon(
      {Key? key,
      required this.icon,
      required this.onPressed,
      required this.text,
      this.backgroundColor = Colors.white24})
      : super(key: key);

  final Icon icon;
  final Function()? onPressed;
  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPressed,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        )),
                    child: icon),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        )
      ],
    );
  }
}
