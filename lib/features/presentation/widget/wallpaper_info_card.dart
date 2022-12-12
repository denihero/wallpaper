import 'package:flutter/material.dart';

Widget wallpaperInfoCard(
    {required String author, required int width, required int height}) {
  return AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    content: Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Author: $author'),
            Text('Size: ${width}x$height'),
          ],
        ),
      ),
    ),
  );
}
