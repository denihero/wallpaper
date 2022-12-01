import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerImageLoading extends StatelessWidget {
  const ShimmerImageLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[300]!,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }
}
