import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallpaper_app/core/models/image.dart';
import 'package:wallpaper_app/core/services/get_image_services.dart';

part 'get_image_state.dart';
part 'get_image_cubit.freezed.dart';

class GetImageCubit extends Cubit<ImageState> {
  GetImageCubit({required this.imageServices}) : super(ImageState.initial());

  final ImageServices imageServices;

  int page = 1;
  int perPageImage = 78;

  void getImages() async {
    emit(ImageState.loading());
    try {
      final Wallpaper result = await imageServices.getAllImage(page,count: perPageImage);

      emit(ImageState.success(image: result, imagePerCount: perPageImage,));
    } catch (e,s) {
      emit(ImageState.error());
    }
  }
}
