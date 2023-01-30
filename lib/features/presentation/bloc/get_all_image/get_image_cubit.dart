import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallpaper_app/core/models/image.dart';
import 'package:wallpaper_app/core/services/get_image_services.dart';
import 'package:wallpaper_app/features/presentation/bloc/get_all_image/get_image_cubit.dart';
import 'package:wallpaper_app/features/presentation/widget/internet_image.dart';
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
  late Stream<String> image;

  Future<void> getImages() async {
    page == 1 ? emit(ImageState.loading()) : null;
    try {
      final List<Photo> result =
          await imageServices.getAllImage(page, count: perPageImage);

      newList.addAll(result);

      await Future.wait([reformatImage(result)]);

      page++;

      emit(ImageState.success(
        image: newList.toSet().toList(),
        hashes: hashList.toSet().toList(),
      ));
    } catch (e, s) {
      print(e);
      print(s);
      emit(ImageState.error());
    }
  }


  Future<void> reformatImage(List<Photo> images) async{
    for (var element in images) {
      String blurImage = await internetImageToBlurHash(element.src!.tiny!);
      hashList.add(blurImage);
    }
  }
}
