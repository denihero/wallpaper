import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/features/presentation/bloc/get_all_image/get_image_cubit.dart';
import 'package:wallpaper_app/service_locator.dart';

import 'features/presentation/pages/detail_page.dart';
import 'features/presentation/pages/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetImageCubit>(create: (context) => sl<GetImageCubit>()..getImages()),
      ],
      child: MaterialApp(
        routes: {
          '/': (context) => const HomePage(),
          '/detail':(context) => const DetailPage()
        },
      ),
    );
  }
}
