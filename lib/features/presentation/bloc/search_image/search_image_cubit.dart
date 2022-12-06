import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/image.dart';
import '../../../../core/services/get_image_services.dart';

part 'search_image_state.dart';
part 'search_image_cubit.freezed.dart';

class SearchImageCubit extends Cubit<SearchImageState> {
  SearchImageCubit({required this.imageServices})
      : super(SearchImageState.initial());

  final ImageServices imageServices;

  int page = 1;
  int perPage = 78;

  void searchAllImage(
    String query,
  ) async {
    List<Photo> newList = [];

    try {
      final List<Photo> resultSearch =
          await imageServices.searchImage(page, query, perPage: perPage);
      newList.addAll(resultSearch);
      page++;

      emit(SearchImageState.success(searchImages: newList.toSet().toList()));
    } catch (e, s) {
      print(e);
      print(s);
      emit(SearchImageState.error());
    }
  }
}
