import 'package:dio/dio.dart';
import 'package:wallpaper_app/core/models/image.dart';
import 'package:wallpaper_app/uikit/base/api.dart';

class ImageServices extends BaseApi {
  ImageServices({required this.client}) : super(dio: client);

  final Dio client;

  Future<Wallpaper> getAllImage(int page, {int? count = 10}) async {
    var response = await getFixed(
        'https://api.pexels.com/v1/curated?page=$page&per_page=$count');
    if (response.statusCode! == 400) throw UnimplementedError();
    if (response.statusCode == 200) {
      return Wallpaper.fromJson(response.data);
    }
    return Wallpaper.fromJson(response.data);
  }
}
