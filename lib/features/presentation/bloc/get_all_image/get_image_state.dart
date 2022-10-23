part of 'get_image_cubit.dart';

@freezed
class ImageState with _$ImageState {
  factory ImageState.initial() = _ImageInitialState;
  factory ImageState.loading() = _ImageLoadingState;
  factory ImageState.error() = _ImageErrorState;
  factory ImageState.success({required Wallpaper image}) = _ImageSuccessState;
}
