import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:wallpaper_app/core/models/image.dart';
import 'package:wallpaper_app/uikit/internet_image_toUint8List.dart';
import '../screens/detail_screen.dart';

class WallpaperCard extends StatefulWidget {
  const WallpaperCard({Key? key, required this.photo, this.blueHash}) : super(key: key);

  final Photo photo;
  final String? blueHash;

  @override
  State<WallpaperCard> createState() => _WallpaperCardState();
}

class _WallpaperCardState extends State<WallpaperCard> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailPage(
                        photo: widget.photo,
                        hash: widget.blueHash,
                      )));
        },
        child: widget.blueHash != null
            ? BlurHash(
                image: widget.photo.src!.medium!,
                hash: widget.blueHash ?? 'L00000fQfQfQfQfQfQfQfQfQfQfQ',
                curve: Curves.ease,
                imageFit: BoxFit.cover,
              )
            : const SizedBox());
  }
}
