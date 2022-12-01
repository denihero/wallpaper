import 'package:dio/dio.dart';
import 'package:wallpaper_app/core/models/image.dart';
import 'package:wallpaper_app/uikit/base/api.dart';

class ImageServices extends BaseApi {
  ImageServices({required this.client}) : super(dio: client);

  final Dio client;

  Future<List<Photo>> getAllImage(int page, {int? count = 10}) async {
    List<Photo> ls = [];
    var response = await getFixed(
        'https://api.pexels.com/v1/curated?page=$page&per_page=$count');
    if (response.statusCode! == 400) throw UnimplementedError();
    if (response.statusCode == 200) {
      var data = response.data['photos'];
      for(var item in data){
        ls.add(Photo.fromJson(item));
      }
      return ls;
    }
    return ls;
  }
}
