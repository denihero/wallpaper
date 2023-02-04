import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallpaper_app/uikit/internet_image_toUint8List.dart';

import '../../../../core/models/image.dart';
import '../../../../core/services/get_image_services.dart';

part 'search_image_state.dart';
part 'search_image_cubit.freezed.dart';

class SearchImageCubit extends Cubit<SearchImageState> {
  SearchImageCubit({required this.imageServices})
      : super(SearchImageState.initial());

  final ImageServices imageServices;

  int page = 1;
  int perPage = 18;
  List<Photo> newList = [];
  List<String> hashList = [];

  void searchAllImage(
    String query,
  ) async {
    page == 1 ? emit(SearchImageState.loading()) : null;
    try {
      final List<Photo> resultSearch =
          await imageServices.searchImage(page, query, perPage: perPage);
      newList.addAll(resultSearch);

      await Future.wait([reformatImage(resultSearch)]);

      page++;

      emit(SearchImageState.success(
          searchImages: newList.toSet().toList(), hashes: hashList));
    } catch (e, s) {
      print(e);
      print(s);
      emit(SearchImageState.error());
    }
  }

  Future<void> reformatImage(List<Photo> images) async {
    await Future.forEach(images, (element) async {
      String blurImage = await internetImageToBlurHash(element.src!.tiny!);
      hashList.add(blurImage);
    });
  }
}
