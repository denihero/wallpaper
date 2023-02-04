// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Photo> searchImages, List<String> hashes)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Photo> searchImages, List<String> hashes)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Photo> searchImages, List<String> hashes)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitialImageState value) initial,
    required TResult Function(SearchLoadingImageState value) loading,
    required TResult Function(SearchErrorImageState value) error,
    required TResult Function(SearchSuccessImageState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitialImageState value)? initial,
    TResult? Function(SearchLoadingImageState value)? loading,
    TResult? Function(SearchErrorImageState value)? error,
    TResult? Function(SearchSuccessImageState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitialImageState value)? initial,
    TResult Function(SearchLoadingImageState value)? loading,
    TResult Function(SearchErrorImageState value)? error,
    TResult Function(SearchSuccessImageState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchImageStateCopyWith<$Res> {
  factory $SearchImageStateCopyWith(
          SearchImageState value, $Res Function(SearchImageState) then) =
      _$SearchImageStateCopyWithImpl<$Res, SearchImageState>;
}

/// @nodoc
class _$SearchImageStateCopyWithImpl<$Res, $Val extends SearchImageState>
    implements $SearchImageStateCopyWith<$Res> {
  _$SearchImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchInitialImageStateCopyWith<$Res> {
  factory _$$SearchInitialImageStateCopyWith(_$SearchInitialImageState value,
          $Res Function(_$SearchInitialImageState) then) =
      __$$SearchInitialImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchInitialImageStateCopyWithImpl<$Res>
    extends _$SearchImageStateCopyWithImpl<$Res, _$SearchInitialImageState>
    implements _$$SearchInitialImageStateCopyWith<$Res> {
  __$$SearchInitialImageStateCopyWithImpl(_$SearchInitialImageState _value,
      $Res Function(_$SearchInitialImageState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchInitialImageState implements SearchInitialImageState {
  _$SearchInitialImageState();

  @override
  String toString() {
    return 'SearchImageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchInitialImageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Photo> searchImages, List<String> hashes)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Photo> searchImages, List<String> hashes)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Photo> searchImages, List<String> hashes)? success,
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
    required TResult Function(SearchInitialImageState value) initial,
    required TResult Function(SearchLoadingImageState value) loading,
    required TResult Function(SearchErrorImageState value) error,
    required TResult Function(SearchSuccessImageState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitialImageState value)? initial,
    TResult? Function(SearchLoadingImageState value)? loading,
    TResult? Function(SearchErrorImageState value)? error,
    TResult? Function(SearchSuccessImageState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitialImageState value)? initial,
    TResult Function(SearchLoadingImageState value)? loading,
    TResult Function(SearchErrorImageState value)? error,
    TResult Function(SearchSuccessImageState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchInitialImageState implements SearchImageState {
  factory SearchInitialImageState() = _$SearchInitialImageState;
}

/// @nodoc
abstract class _$$SearchLoadingImageStateCopyWith<$Res> {
  factory _$$SearchLoadingImageStateCopyWith(_$SearchLoadingImageState value,
          $Res Function(_$SearchLoadingImageState) then) =
      __$$SearchLoadingImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadingImageStateCopyWithImpl<$Res>
    extends _$SearchImageStateCopyWithImpl<$Res, _$SearchLoadingImageState>
    implements _$$SearchLoadingImageStateCopyWith<$Res> {
  __$$SearchLoadingImageStateCopyWithImpl(_$SearchLoadingImageState _value,
      $Res Function(_$SearchLoadingImageState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchLoadingImageState implements SearchLoadingImageState {
  _$SearchLoadingImageState();

  @override
  String toString() {
    return 'SearchImageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoadingImageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Photo> searchImages, List<String> hashes)
        success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Photo> searchImages, List<String> hashes)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Photo> searchImages, List<String> hashes)? success,
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
    required TResult Function(SearchInitialImageState value) initial,
    required TResult Function(SearchLoadingImageState value) loading,
    required TResult Function(SearchErrorImageState value) error,
    required TResult Function(SearchSuccessImageState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitialImageState value)? initial,
    TResult? Function(SearchLoadingImageState value)? loading,
    TResult? Function(SearchErrorImageState value)? error,
    TResult? Function(SearchSuccessImageState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitialImageState value)? initial,
    TResult Function(SearchLoadingImageState value)? loading,
    TResult Function(SearchErrorImageState value)? error,
    TResult Function(SearchSuccessImageState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchLoadingImageState implements SearchImageState {
  factory SearchLoadingImageState() = _$SearchLoadingImageState;
}

/// @nodoc
abstract class _$$SearchErrorImageStateCopyWith<$Res> {
  factory _$$SearchErrorImageStateCopyWith(_$SearchErrorImageState value,
          $Res Function(_$SearchErrorImageState) then) =
      __$$SearchErrorImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchErrorImageStateCopyWithImpl<$Res>
    extends _$SearchImageStateCopyWithImpl<$Res, _$SearchErrorImageState>
    implements _$$SearchErrorImageStateCopyWith<$Res> {
  __$$SearchErrorImageStateCopyWithImpl(_$SearchErrorImageState _value,
      $Res Function(_$SearchErrorImageState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchErrorImageState implements SearchErrorImageState {
  _$SearchErrorImageState();

  @override
  String toString() {
    return 'SearchImageState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchErrorImageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Photo> searchImages, List<String> hashes)
        success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Photo> searchImages, List<String> hashes)? success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Photo> searchImages, List<String> hashes)? success,
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
    required TResult Function(SearchInitialImageState value) initial,
    required TResult Function(SearchLoadingImageState value) loading,
    required TResult Function(SearchErrorImageState value) error,
    required TResult Function(SearchSuccessImageState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitialImageState value)? initial,
    TResult? Function(SearchLoadingImageState value)? loading,
    TResult? Function(SearchErrorImageState value)? error,
    TResult? Function(SearchSuccessImageState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitialImageState value)? initial,
    TResult Function(SearchLoadingImageState value)? loading,
    TResult Function(SearchErrorImageState value)? error,
    TResult Function(SearchSuccessImageState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchErrorImageState implements SearchImageState {
  factory SearchErrorImageState() = _$SearchErrorImageState;
}

/// @nodoc
abstract class _$$SearchSuccessImageStateCopyWith<$Res> {
  factory _$$SearchSuccessImageStateCopyWith(_$SearchSuccessImageState value,
          $Res Function(_$SearchSuccessImageState) then) =
      __$$SearchSuccessImageStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Photo> searchImages, List<String> hashes});
}

/// @nodoc
class __$$SearchSuccessImageStateCopyWithImpl<$Res>
    extends _$SearchImageStateCopyWithImpl<$Res, _$SearchSuccessImageState>
    implements _$$SearchSuccessImageStateCopyWith<$Res> {
  __$$SearchSuccessImageStateCopyWithImpl(_$SearchSuccessImageState _value,
      $Res Function(_$SearchSuccessImageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchImages = null,
    Object? hashes = null,
  }) {
    return _then(_$SearchSuccessImageState(
      searchImages: null == searchImages
          ? _value._searchImages
          : searchImages // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      hashes: null == hashes
          ? _value._hashes
          : hashes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SearchSuccessImageState implements SearchSuccessImageState {
  _$SearchSuccessImageState(
      {required final List<Photo> searchImages,
      required final List<String> hashes})
      : _searchImages = searchImages,
        _hashes = hashes;

  final List<Photo> _searchImages;
  @override
  List<Photo> get searchImages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchImages);
  }

  final List<String> _hashes;
  @override
  List<String> get hashes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hashes);
  }

  @override
  String toString() {
    return 'SearchImageState.success(searchImages: $searchImages, hashes: $hashes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessImageState &&
            const DeepCollectionEquality()
                .equals(other._searchImages, _searchImages) &&
            const DeepCollectionEquality().equals(other._hashes, _hashes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchImages),
      const DeepCollectionEquality().hash(_hashes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessImageStateCopyWith<_$SearchSuccessImageState> get copyWith =>
      __$$SearchSuccessImageStateCopyWithImpl<_$SearchSuccessImageState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Photo> searchImages, List<String> hashes)
        success,
  }) {
    return success(searchImages, hashes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Photo> searchImages, List<String> hashes)? success,
  }) {
    return success?.call(searchImages, hashes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Photo> searchImages, List<String> hashes)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(searchImages, hashes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitialImageState value) initial,
    required TResult Function(SearchLoadingImageState value) loading,
    required TResult Function(SearchErrorImageState value) error,
    required TResult Function(SearchSuccessImageState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitialImageState value)? initial,
    TResult? Function(SearchLoadingImageState value)? loading,
    TResult? Function(SearchErrorImageState value)? error,
    TResult? Function(SearchSuccessImageState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitialImageState value)? initial,
    TResult Function(SearchLoadingImageState value)? loading,
    TResult Function(SearchErrorImageState value)? error,
    TResult Function(SearchSuccessImageState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SearchSuccessImageState implements SearchImageState {
  factory SearchSuccessImageState(
      {required final List<Photo> searchImages,
      required final List<String> hashes}) = _$SearchSuccessImageState;

  List<Photo> get searchImages;
  List<String> get hashes;
  @JsonKey(ignore: true)
  _$$SearchSuccessImageStateCopyWith<_$SearchSuccessImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
