import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';
part 'image.g.dart';
//ignore_for_file: non_constant_identifier_names
@freezed
class Wallpaper with _$Wallpaper {
  const factory Wallpaper({
    int? page,

    int? per_page,
    List<Photo>? photos,
    int? totalResults,
    String? nextPage,
    String? prevPage,
  }) = _Image;

  factory Wallpaper.fromJson(Map<String, dynamic> json) =>
      _$WallpaperFromJson(json);
}

@freezed
class Photo with _$Photo {
  const factory Photo({
    int? id,
    int? width,
    int? height,
    String? url,
    String? photographer,
    String? photographer_url,
    int? photographer_id,
    String? avg_color,
    Src? src,
    bool? liked,
    String? alt,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}

@freezed
class Src with _$Src {
  const factory Src({
    String? original,
    String? large2x,
    String? large,
    String? medium,
    String? small,
    String? portrait,
    String? landscape,
    String? tiny,
  }) = _Src;

  factory Src.fromJson(Map<String, dynamic> json) => _$SrcFromJson(json);
}
