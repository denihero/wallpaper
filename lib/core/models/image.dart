import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezed
class Wallpaper with _$Wallpaper {
  const factory Wallpaper({
    int? page,
    int? perPage,
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
    String? photographerUrl,
    int? photographerId,
    String? avgColor,
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
    String? large2X,
    String? large,
    String? medium,
    String? small,
    String? portrait,
    String? landscape,
    String? tiny,
  }) = _Src;

  factory Src.fromJson(Map<String, dynamic> json) => _$SrcFromJson(json);
}
