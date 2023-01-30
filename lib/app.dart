import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/features/presentation/bloc/get_all_image/get_image_cubit.dart';
import 'package:wallpaper_app/features/presentation/bloc/search_image/search_image_cubit.dart';
import 'package:wallpaper_app/service_locator.dart';

import 'features/presentation/screens/detail_screen.dart';
import 'features/presentation/screens/home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetImageCubit>(
            create: (context) => sl<GetImageCubit>()..getImages()),
        BlocProvider<SearchImageCubit>(
            create: (context) => sl<SearchImageCubit>()),

      ],
      child: MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const HomePage(),
          '/detail': (context) => const DetailPage()
        },
      ),
    );
  }
}
