import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallpaper_app/core/models/image.dart';
import 'package:wallpaper_app/core/services/get_image_services.dart';

part 'get_image_state.dart';
part 'get_image_cubit.freezed.dart';

class GetImageCubit extends Cubit<ImageState> {
  GetImageCubit({required this.imageServices}) : super(ImageState.initial());

  final ImageServices imageServices;

  void getImages() async {
    try {
      emit(ImageState.loading());
      final Wallpaper result = await imageServices.getAllImage(1);
      emit(ImageState.success(image: result));
    } catch (e) {
      emit(ImageState.error());
    }
  }
}
