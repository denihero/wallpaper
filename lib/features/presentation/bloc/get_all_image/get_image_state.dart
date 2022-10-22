part of 'get_image_cubit.dart';

@freezed
class ImageState with _$ImageState {
  const factory ImageState.initial() = _ImageInitialState;
  const factory ImageState.loading() = _ImageLoadingState;
  const factory ImageState.error() = _ImageErrorState;
  const factory ImageState.success({required Wallpaper image}) = _ImageSuccessState;
}

