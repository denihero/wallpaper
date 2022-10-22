import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallpaper_app/core/models/image.dart';
import 'package:wallpaper_app/core/services/get_image_services.dart';

part 'get_image_state.dart';
part 'get_image_cubit.freezed.dart';

class GetImageCubit extends Cubit<ImageState> {
  GetImageCubit({required this.imageServices}) : super(const ImageState.initial());

  final ImageServices imageServices;

  void getImages() async{
    emit(const ImageState.loading());
    try{
      var result = await imageServices.getAllImage(1);
      emit(ImageState.success(image: result));
    }catch (e,s) {
      print(e);
      print(s);
      emit(const ImageState.error());
    }
  }

}
