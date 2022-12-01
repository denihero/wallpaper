import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:wallpaper_app/core/models/image.dart';
import 'package:wallpaper_app/features/presentation/pages/detail_page.dart';

import 'internet_image.dart';

class WallpaperCard extends StatelessWidget {
  const WallpaperCard({Key? key, required this.photo}) : super(key: key);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      photo: photo,
                    )));
      },
      child: InternetImage(image: photo.src!.medium!,

      )
    );
  }
}
