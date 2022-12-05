import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallpaper_app/core/models/image.dart';
import 'package:wallpaper_app/core/services/get_image_services.dart';
import 'package:wallpaper_app/features/presentation/bloc/get_all_image/get_image_cubit.dart';

part 'get_image_state.dart';
part 'get_image_cubit.freezed.dart';

class GetImageCubit extends Cubit<ImageState> {
  GetImageCubit({required this.imageServices}) : super(ImageState.initial());

  final ImageServices imageServices;

  int page = 1;
  int perPageImage = 78;
  List<Photo> newList = [];

  void getImages() async {
    //emit(ImageState.loading());
    try {
      final List<Photo> result =
          await imageServices.getAllImage(page, count: perPageImage);
      newList.addAll(result);
      page++;


      emit(ImageState.success(
        image: newList.toSet().toList(),
        imagePerCount: perPageImage,
      ));
    } catch (e, s) {
      print(e);
      print(s);
      emit(ImageState.error());
    }
  }
}
