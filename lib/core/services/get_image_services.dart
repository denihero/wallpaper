import 'package:dio/dio.dart';
import 'package:wallpaper_app/core/models/image.dart';
import 'package:wallpaper_app/uikit/base/api.dart';

class ImageServices extends BaseApi {
  ImageServices({required this.client}) : super(dio: client);

  final Dio client;

  Future<List<Photo>> getAllImage(int page, {int? count = 10}) async {
    List<Photo> imageResult = [];
    var response = await getFixed(
        'https://api.pexels.com/v1/curated?page=$page&per_page=$count');
    if (response.statusCode! == 400) throw UnimplementedError();
    if (response.statusCode == 200) {
      var data = response.data['photos'];
      for (var item in data) {
        imageResult.add(Photo.fromJson(item));
      }
    }
    return imageResult;
  }

  Future<List<Photo>> searchImage(int page, String query, {int perPage = 10}) async {
    List<Photo> searchResult = [];
    var response = await getFixed(
        'https://api.pexels.com/v1/search/?page=$page&per_page=$perPage&query=$query');
    if (response.statusCode == 400) throw UnimplementedError();
    if (response.statusCode == 200) {
      var data = response.data['photos'];
      for (var item in data) {
        searchResult.add(Photo.fromJson(item));
      }
    }

    return searchResult;
  }
}
