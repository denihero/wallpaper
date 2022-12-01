part of 'get_image_cubit.dart';

@freezed
abstract class ImageState with _$ImageState {
  factory ImageState.initial() = ImageInitialState;
  factory ImageState.loading() = ImageLoadingState;
  factory ImageState.error() = ImageErrorState;
  factory ImageState.success({required Wallpaper image,required int imagePerCount}) = ImageSuccessState;
}
