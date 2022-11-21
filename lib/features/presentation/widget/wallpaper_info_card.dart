import 'package:flutter/material.dart';

Widget wallpaperInfoCard({required String author,required int width,required int height}) {
  return AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12)
    ),
    title: Container(
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Author - $author'),
          Text('Size - ${height}x$width'),
        ],
      ),
    ),
  );
}
