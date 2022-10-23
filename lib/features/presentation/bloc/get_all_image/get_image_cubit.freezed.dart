// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Wallpaper image) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(Wallpaper image)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Wallpaper image)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageInitialState value) initial,
    required TResult Function(ImageLoadingState value) loading,
    required TResult Function(ImageErrorState value) error,
    required TResult Function(ImageSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageInitialState value)? initial,
    TResult? Function(ImageLoadingState value)? loading,
    TResult? Function(ImageErrorState value)? error,
    TResult? Function(ImageSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageInitialState value)? initial,
    TResult Function(ImageLoadingState value)? loading,
    TResult Function(ImageErrorState value)? error,
    TResult Function(ImageSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res, ImageState>;
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res, $Val extends ImageState>
    implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImageInitialStateCopyWith<$Res> {
  factory _$$ImageInitialStateCopyWith(
          _$ImageInitialState value, $Res Function(_$ImageInitialState) then) =
      __$$ImageInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImageInitialStateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageInitialState>
    implements _$$ImageInitialStateCopyWith<$Res> {
  __$$ImageInitialStateCopyWithImpl(
      _$ImageInitialState _value, $Res Function(_$ImageInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ImageInitialState implements ImageInitialState {
  _$ImageInitialState();

  @override
  String toString() {
    return 'ImageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ImageInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Wallpaper image) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(Wallpaper image)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Wallpaper image)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageInitialState value) initial,
    required TResult Function(ImageLoadingState value) loading,
    required TResult Function(ImageErrorState value) error,
    required TResult Function(ImageSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageInitialState value)? initial,
    TResult? Function(ImageLoadingState value)? loading,
    TResult? Function(ImageErrorState value)? error,
    TResult? Function(ImageSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageInitialState value)? initial,
    TResult Function(ImageLoadingState value)? loading,
    TResult Function(ImageErrorState value)? error,
    TResult Function(ImageSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ImageInitialState implements ImageState {
  factory ImageInitialState() = _$ImageInitialState;
}

/// @nodoc
abstract class _$$ImageLoadingStateCopyWith<$Res> {
  factory _$$ImageLoadingStateCopyWith(
          _$ImageLoadingState value, $Res Function(_$ImageLoadingState) then) =
      __$$ImageLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImageLoadingStateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageLoadingState>
    implements _$$ImageLoadingStateCopyWith<$Res> {
  __$$ImageLoadingStateCopyWithImpl(
      _$ImageLoadingState _value, $Res Function(_$ImageLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ImageLoadingState implements ImageLoadingState {
  _$ImageLoadingState();

  @override
  String toString() {
    return 'ImageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ImageLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Wallpaper image) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(Wallpaper image)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Wallpaper image)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageInitialState value) initial,
    required TResult Function(ImageLoadingState value) loading,
    required TResult Function(ImageErrorState value) error,
    required TResult Function(ImageSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageInitialState value)? initial,
    TResult? Function(ImageLoadingState value)? loading,
    TResult? Function(ImageErrorState value)? error,
    TResult? Function(ImageSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageInitialState value)? initial,
    TResult Function(ImageLoadingState value)? loading,
    TResult Function(ImageErrorState value)? error,
    TResult Function(ImageSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ImageLoadingState implements ImageState {
  factory ImageLoadingState() = _$ImageLoadingState;
}

/// @nodoc
abstract class _$$ImageErrorStateCopyWith<$Res> {
  factory _$$ImageErrorStateCopyWith(
          _$ImageErrorState value, $Res Function(_$ImageErrorState) then) =
      __$$ImageErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImageErrorStateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageErrorState>
    implements _$$ImageErrorStateCopyWith<$Res> {
  __$$ImageErrorStateCopyWithImpl(
      _$ImageErrorState _value, $Res Function(_$ImageErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ImageErrorState implements ImageErrorState {
  _$ImageErrorState();

  @override
  String toString() {
    return 'ImageState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ImageErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Wallpaper image) success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(Wallpaper image)? success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Wallpaper image)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageInitialState value) initial,
    required TResult Function(ImageLoadingState value) loading,
    required TResult Function(ImageErrorState value) error,
    required TResult Function(ImageSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageInitialState value)? initial,
    TResult? Function(ImageLoadingState value)? loading,
    TResult? Function(ImageErrorState value)? error,
    TResult? Function(ImageSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageInitialState value)? initial,
    TResult Function(ImageLoadingState value)? loading,
    TResult Function(ImageErrorState value)? error,
    TResult Function(ImageSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ImageErrorState implements ImageState {
  factory ImageErrorState() = _$ImageErrorState;
}

/// @nodoc
abstract class _$$ImageSuccessStateCopyWith<$Res> {
  factory _$$ImageSuccessStateCopyWith(
          _$ImageSuccessState value, $Res Function(_$ImageSuccessState) then) =
      __$$ImageSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Wallpaper image});

  $WallpaperCopyWith<$Res> get image;
}

/// @nodoc
class __$$ImageSuccessStateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageSuccessState>
    implements _$$ImageSuccessStateCopyWith<$Res> {
  __$$ImageSuccessStateCopyWithImpl(
      _$ImageSuccessState _value, $Res Function(_$ImageSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ImageSuccessState(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Wallpaper,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WallpaperCopyWith<$Res> get image {
    return $WallpaperCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc

class _$ImageSuccessState implements ImageSuccessState {
  _$ImageSuccessState({required this.image});

  @override
  final Wallpaper image;

  @override
  String toString() {
    return 'ImageState.success(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSuccessState &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSuccessStateCopyWith<_$ImageSuccessState> get copyWith =>
      __$$ImageSuccessStateCopyWithImpl<_$ImageSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Wallpaper image) success,
  }) {
    return success(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(Wallpaper image)? success,
  }) {
    return success?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Wallpaper image)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageInitialState value) initial,
    required TResult Function(ImageLoadingState value) loading,
    required TResult Function(ImageErrorState value) error,
    required TResult Function(ImageSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageInitialState value)? initial,
    TResult? Function(ImageLoadingState value)? loading,
    TResult? Function(ImageErrorState value)? error,
    TResult? Function(ImageSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageInitialState value)? initial,
    TResult Function(ImageLoadingState value)? loading,
    TResult Function(ImageErrorState value)? error,
    TResult Function(ImageSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ImageSuccessState implements ImageState {
  factory ImageSuccessState({required final Wallpaper image}) =
      _$ImageSuccessState;

  Wallpaper get image;
  @JsonKey(ignore: true)
  _$$ImageSuccessStateCopyWith<_$ImageSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
