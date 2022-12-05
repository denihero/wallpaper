part of 'search_image_cubit.dart';

@freezed
abstract class SearchImageState with _$SearchImageState{
  factory SearchImageState.initial() = SearchInitialImageState;
  factory SearchImageState.loading() = SearchLoadingImageState;
  factory SearchImageState.error() = SearchErrorImageState;
  factory SearchImageState.success({required List<Photo> searchImages}) = SearchSuccessImageState;
}

