import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallpaper_app/core/models/image.dart';
import 'package:wallpaper_app/core/services/get_image_services.dart';
import 'package:wallpaper_app/features/presentation/bloc/get_all_image/get_image_cubit.dart';
import 'package:wallpaper_app/uikit/internet_image_toUint8List.dart';

part 'get_image_state.dart';
part 'get_image_cubit.freezed.dart';

class GetImageCubit extends Cubit<ImageState> {
  GetImageCubit({required this.imageServices}) : super(ImageState.initial());

  final ImageServices imageServices;

  int page = 1;
  int perPageImage = 27;
  List<Photo> newList = [];
  List<String> hashList = [];

  void getImages() async {
    //emit(ImageState.loading());
    try {
      final List<Photo> result =
          await imageServices.getAllImage(page, count: perPageImage);

      newList.addAll(result);

      await Future.forEach(newList, (element) async{
        hashList.add(await internetImageToBlurHash(element.src!.tiny!));
      });

      page++;

      emit(ImageState.success(
        image: newList.toSet().toList(),
        hashes: hashList,
      ));
    } catch (e, s) {
      //print(e);
      //print(s);
      emit(ImageState.error());
    }
  }
}
