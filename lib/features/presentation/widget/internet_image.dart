import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_app/features/presentation/widget/bounce_loading.dart';

class InternetImage extends StatelessWidget {
  const InternetImage({Key? key, required this.image, this.width, this.height})
      : super(key: key);
  final String image;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      width: width,
      height: height,
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
      placeholder: (context, url) => const SpinKitDoubleBounce(
        color: Colors.blue,
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
