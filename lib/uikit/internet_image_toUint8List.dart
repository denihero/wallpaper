import 'package:blurhash_dart/blurhash_dart.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;

Future<String> internetImageToBlurHash(String image) async {
  Uint8List bytes = (await NetworkAssetBundle(Uri.parse(image))
      .load(image))
      .buffer
      .asUint8List();

  final resultImage = img.decodeImage(bytes.toList());
  final blurHash = BlurHash.encode(resultImage!, numCompX: 4, numCompY: 3).hash;

  return blurHash;
}
