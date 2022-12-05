import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/image.dart';
import '../../../../core/services/get_image_services.dart';

part 'search_image_state.dart';
part 'search_image_cubit.freezed.dart';

class SearchImageCubit extends Cubit<SearchImageState> {
  SearchImageCubit({required this.imageServices}) : super(SearchImageState.initial());

  final ImageServices imageServices;

  int page = 1;
  int perPage = 78;
  List<Photo> newList = [];

  void searchAllImage(String query) async {
    emit(SearchImageState.loading());
    try {
      final List<Photo> result =
          await imageServices.searchImage(page, query, perPage: perPage);
      page++;
      emit(SearchImageState.success(searchImages: result.toSet().toList()));
    } catch (e,s) {
      print(e);
      print(s);
      emit(SearchImageState.error());
    }
  }
}
