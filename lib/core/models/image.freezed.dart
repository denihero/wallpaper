// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wallpaper _$WallpaperFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Wallpaper {
  int? get page => throw _privateConstructorUsedError;
  int? get per_page => throw _privateConstructorUsedError;
  List<Photo>? get photos => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  String? get nextPage => throw _privateConstructorUsedError;
  String? get prevPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WallpaperCopyWith<Wallpaper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallpaperCopyWith<$Res> {
  factory $WallpaperCopyWith(Wallpaper value, $Res Function(Wallpaper) then) =
      _$WallpaperCopyWithImpl<$Res, Wallpaper>;
  @useResult
  $Res call(
      {int? page,
      int? per_page,
      List<Photo>? photos,
      int? totalResults,
      String? nextPage,
      String? prevPage});
}

/// @nodoc
class _$WallpaperCopyWithImpl<$Res, $Val extends Wallpaper>
    implements $WallpaperCopyWith<$Res> {
  _$WallpaperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? per_page = freezed,
    Object? photos = freezed,
    Object? totalResults = freezed,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      per_page: freezed == per_page
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageCopyWith<$Res> implements $WallpaperCopyWith<$Res> {
  factory _$$_ImageCopyWith(_$_Image value, $Res Function(_$_Image) then) =
      __$$_ImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      int? per_page,
      List<Photo>? photos,
      int? totalResults,
      String? nextPage,
      String? prevPage});
}

/// @nodoc
class __$$_ImageCopyWithImpl<$Res>
    extends _$WallpaperCopyWithImpl<$Res, _$_Image>
    implements _$$_ImageCopyWith<$Res> {
  __$$_ImageCopyWithImpl(_$_Image _value, $Res Function(_$_Image) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? per_page = freezed,
    Object? photos = freezed,
    Object? totalResults = freezed,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
  }) {
    return _then(_$_Image(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      per_page: freezed == per_page
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Image implements _Image {
  const _$_Image(
      {this.page,
      this.per_page,
      final List<Photo>? photos,
      this.totalResults,
      this.nextPage,
      this.prevPage})
      : _photos = photos;

  factory _$_Image.fromJson(Map<String, dynamic> json) =>
      _$$_ImageFromJson(json);

  @override
  final int? page;
  @override
  final int? per_page;
  final List<Photo>? _photos;
  @override
  List<Photo>? get photos {
    final value = _photos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalResults;
  @override
  final String? nextPage;
  @override
  final String? prevPage;

  @override
  String toString() {
    return 'Wallpaper(page: $page, per_page: $per_page, photos: $photos, totalResults: $totalResults, nextPage: $nextPage, prevPage: $prevPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Image &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.per_page, per_page) ||
                other.per_page == per_page) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.prevPage, prevPage) ||
                other.prevPage == prevPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      per_page,
      const DeepCollectionEquality().hash(_photos),
      totalResults,
      nextPage,
      prevPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      __$$_ImageCopyWithImpl<_$_Image>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageToJson(
      this,
    );
  }
}

abstract class _Image implements Wallpaper {
  const factory _Image(
      {final int? page,
      final int? per_page,
      final List<Photo>? photos,
      final int? totalResults,
      final String? nextPage,
      final String? prevPage}) = _$_Image;

  factory _Image.fromJson(Map<String, dynamic> json) = _$_Image.fromJson;

  @override
  int? get page;
  @override
  int? get per_page;
  @override
  List<Photo>? get photos;
  @override
  int? get totalResults;
  @override
  String? get nextPage;
  @override
  String? get prevPage;
  @override
  @JsonKey(ignore: true)
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      throw _privateConstructorUsedError;
}

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  int? get id => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get photographer => throw _privateConstructorUsedError;
  String? get photographer_url => throw _privateConstructorUsedError;
  int? get photographer_id => throw _privateConstructorUsedError;
  String? get avg_color => throw _privateConstructorUsedError;
  Src? get src => throw _privateConstructorUsedError;
  bool? get liked => throw _privateConstructorUsedError;
  String? get alt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res, Photo>;
  @useResult
  $Res call(
      {int? id,
      int? width,
      int? height,
      String? url,
      String? photographer,
      String? photographer_url,
      int? photographer_id,
      String? avg_color,
      Src? src,
      bool? liked,
      String? alt});

  $SrcCopyWith<$Res>? get src;
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
    Object? photographer = freezed,
    Object? photographer_url = freezed,
    Object? photographer_id = freezed,
    Object? avg_color = freezed,
    Object? src = freezed,
    Object? liked = freezed,
    Object? alt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer: freezed == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer_url: freezed == photographer_url
          ? _value.photographer_url
          : photographer_url // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer_id: freezed == photographer_id
          ? _value.photographer_id
          : photographer_id // ignore: cast_nullable_to_non_nullable
              as int?,
      avg_color: freezed == avg_color
          ? _value.avg_color
          : avg_color // ignore: cast_nullable_to_non_nullable
              as String?,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Src?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SrcCopyWith<$Res>? get src {
    if (_value.src == null) {
      return null;
    }

    return $SrcCopyWith<$Res>(_value.src!, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$_PhotoCopyWith(_$_Photo value, $Res Function(_$_Photo) then) =
      __$$_PhotoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? width,
      int? height,
      String? url,
      String? photographer,
      String? photographer_url,
      int? photographer_id,
      String? avg_color,
      Src? src,
      bool? liked,
      String? alt});

  @override
  $SrcCopyWith<$Res>? get src;
}

/// @nodoc
class __$$_PhotoCopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res, _$_Photo>
    implements _$$_PhotoCopyWith<$Res> {
  __$$_PhotoCopyWithImpl(_$_Photo _value, $Res Function(_$_Photo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
    Object? photographer = freezed,
    Object? photographer_url = freezed,
    Object? photographer_id = freezed,
    Object? avg_color = freezed,
    Object? src = freezed,
    Object? liked = freezed,
    Object? alt = freezed,
  }) {
    return _then(_$_Photo(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer: freezed == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer_url: freezed == photographer_url
          ? _value.photographer_url
          : photographer_url // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer_id: freezed == photographer_id
          ? _value.photographer_id
          : photographer_id // ignore: cast_nullable_to_non_nullable
              as int?,
      avg_color: freezed == avg_color
          ? _value.avg_color
          : avg_color // ignore: cast_nullable_to_non_nullable
              as String?,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Src?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Photo implements _Photo {
  const _$_Photo(
      {this.id,
      this.width,
      this.height,
      this.url,
      this.photographer,
      this.photographer_url,
      this.photographer_id,
      this.avg_color,
      this.src,
      this.liked,
      this.alt});

  factory _$_Photo.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoFromJson(json);

  @override
  final int? id;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? url;
  @override
  final String? photographer;
  @override
  final String? photographer_url;
  @override
  final int? photographer_id;
  @override
  final String? avg_color;
  @override
  final Src? src;
  @override
  final bool? liked;
  @override
  final String? alt;

  @override
  String toString() {
    return 'Photo(id: $id, width: $width, height: $height, url: $url, photographer: $photographer, photographer_url: $photographer_url, photographer_id: $photographer_id, avg_color: $avg_color, src: $src, liked: $liked, alt: $alt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Photo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.photographer, photographer) ||
                other.photographer == photographer) &&
            (identical(other.photographer_url, photographer_url) ||
                other.photographer_url == photographer_url) &&
            (identical(other.photographer_id, photographer_id) ||
                other.photographer_id == photographer_id) &&
            (identical(other.avg_color, avg_color) ||
                other.avg_color == avg_color) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      width,
      height,
      url,
      photographer,
      photographer_url,
      photographer_id,
      avg_color,
      src,
      liked,
      alt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoCopyWith<_$_Photo> get copyWith =>
      __$$_PhotoCopyWithImpl<_$_Photo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoToJson(
      this,
    );
  }
}

abstract class _Photo implements Photo {
  const factory _Photo(
      {final int? id,
      final int? width,
      final int? height,
      final String? url,
      final String? photographer,
      final String? photographer_url,
      final int? photographer_id,
      final String? avg_color,
      final Src? src,
      final bool? liked,
      final String? alt}) = _$_Photo;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$_Photo.fromJson;

  @override
  int? get id;
  @override
  int? get width;
  @override
  int? get height;
  @override
  String? get url;
  @override
  String? get photographer;
  @override
  String? get photographer_url;
  @override
  int? get photographer_id;
  @override
  String? get avg_color;
  @override
  Src? get src;
  @override
  bool? get liked;
  @override
  String? get alt;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoCopyWith<_$_Photo> get copyWith =>
      throw _privateConstructorUsedError;
}

Src _$SrcFromJson(Map<String, dynamic> json) {
  return _Src.fromJson(json);
}

/// @nodoc
mixin _$Src {
  String? get original => throw _privateConstructorUsedError;
  String? get large2x => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;
  String? get medium => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;
  String? get portrait => throw _privateConstructorUsedError;
  String? get landscape => throw _privateConstructorUsedError;
  String? get tiny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SrcCopyWith<Src> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SrcCopyWith<$Res> {
  factory $SrcCopyWith(Src value, $Res Function(Src) then) =
      _$SrcCopyWithImpl<$Res, Src>;
  @useResult
  $Res call(
      {String? original,
      String? large2x,
      String? large,
      String? medium,
      String? small,
      String? portrait,
      String? landscape,
      String? tiny});
}

/// @nodoc
class _$SrcCopyWithImpl<$Res, $Val extends Src> implements $SrcCopyWith<$Res> {
  _$SrcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = freezed,
    Object? large2x = freezed,
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
    Object? portrait = freezed,
    Object? landscape = freezed,
    Object? tiny = freezed,
  }) {
    return _then(_value.copyWith(
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      large2x: freezed == large2x
          ? _value.large2x
          : large2x // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      portrait: freezed == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String?,
      landscape: freezed == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String?,
      tiny: freezed == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SrcCopyWith<$Res> implements $SrcCopyWith<$Res> {
  factory _$$_SrcCopyWith(_$_Src value, $Res Function(_$_Src) then) =
      __$$_SrcCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? original,
      String? large2x,
      String? large,
      String? medium,
      String? small,
      String? portrait,
      String? landscape,
      String? tiny});
}

/// @nodoc
class __$$_SrcCopyWithImpl<$Res> extends _$SrcCopyWithImpl<$Res, _$_Src>
    implements _$$_SrcCopyWith<$Res> {
  __$$_SrcCopyWithImpl(_$_Src _value, $Res Function(_$_Src) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = freezed,
    Object? large2x = freezed,
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
    Object? portrait = freezed,
    Object? landscape = freezed,
    Object? tiny = freezed,
  }) {
    return _then(_$_Src(
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      large2x: freezed == large2x
          ? _value.large2x
          : large2x // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      portrait: freezed == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String?,
      landscape: freezed == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String?,
      tiny: freezed == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Src implements _Src {
  const _$_Src(
      {this.original,
      this.large2x,
      this.large,
      this.medium,
      this.small,
      this.portrait,
      this.landscape,
      this.tiny});

  factory _$_Src.fromJson(Map<String, dynamic> json) => _$$_SrcFromJson(json);

  @override
  final String? original;
  @override
  final String? large2x;
  @override
  final String? large;
  @override
  final String? medium;
  @override
  final String? small;
  @override
  final String? portrait;
  @override
  final String? landscape;
  @override
  final String? tiny;

  @override
  String toString() {
    return 'Src(original: $original, large2x: $large2x, large: $large, medium: $medium, small: $small, portrait: $portrait, landscape: $landscape, tiny: $tiny)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Src &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.large2x, large2x) || other.large2x == large2x) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.portrait, portrait) ||
                other.portrait == portrait) &&
            (identical(other.landscape, landscape) ||
                other.landscape == landscape) &&
            (identical(other.tiny, tiny) || other.tiny == tiny));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, original, large2x, large, medium,
      small, portrait, landscape, tiny);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SrcCopyWith<_$_Src> get copyWith =>
      __$$_SrcCopyWithImpl<_$_Src>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SrcToJson(
      this,
    );
  }
}

abstract class _Src implements Src {
  const factory _Src(
      {final String? original,
      final String? large2x,
      final String? large,
      final String? medium,
      final String? small,
      final String? portrait,
      final String? landscape,
      final String? tiny}) = _$_Src;

  factory _Src.fromJson(Map<String, dynamic> json) = _$_Src.fromJson;

  @override
  String? get original;
  @override
  String? get large2x;
  @override
  String? get large;
  @override
  String? get medium;
  @override
  String? get small;
  @override
  String? get portrait;
  @override
  String? get landscape;
  @override
  String? get tiny;
  @override
  @JsonKey(ignore: true)
  _$$_SrcCopyWith<_$_Src> get copyWith => throw _privateConstructorUsedError;
}
