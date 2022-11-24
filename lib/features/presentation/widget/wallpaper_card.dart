import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:wallpaper_app/core/models/image.dart';
import 'package:wallpaper_app/features/presentation/pages/detail_page.dart';

import 'internet_image.dart';

class WallpaperCard extends StatelessWidget {
  const WallpaperCard({Key? key, required this.image}) : super(key: key);

  final Photo image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      image: image.src!.original,
                      author: image.photographer!,
                      width: image.width!,
                      height: image.height!,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image: NetworkImage(image.src!.medium!,)
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Container(
              height: 50,
              color: HexColor(image.avg_color ?? '#938872'),
              child: ListTile(
                title: Text('${image.photographer}',style: TextStyle(color: Colors.white),),
              ),
            )
          ]

        ),
      ),
    );
  }
}
