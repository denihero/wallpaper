import 'package:wallpaper_app/index.dart';
import 'package:flutter/material.dart';


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
      cacheKey: 'wall',
      cacheManager:
          CacheManager(Config('wall', stalePeriod: const Duration(days: 7))),
      placeholder: (context, url) => const ShimmerImageLoading(),
    );
  }
}
