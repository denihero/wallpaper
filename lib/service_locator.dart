import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:wallpaper_app/core/services/get_image_services.dart';
import 'package:wallpaper_app/features/presentation/bloc/get_all_image/get_image_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => GetImageCubit(imageServices: sl()));

  sl.registerLazySingleton(() => ImageServices(client: Dio()));
}
