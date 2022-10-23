import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/features/presentation/widget/bounce_loading.dart';
import 'package:wallpaper_app/features/presentation/widget/wallpaper_card.dart';

import '../bloc/get_all_image/get_image_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetImageCubit>().state;
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Wallpaper',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: state.when(
              initial: () => const SizedBox(),
              loading: () => const SpinKitDoubleBounce(),
              error: () => const Text('Something get wrong'),
              success: (image) {
                return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.65,
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5),
                    itemCount: image.photos!.length,
                    itemBuilder: (context, index) {
                      return WallpaperCard(
                        image: image.photos![index],
                      );
                    });
              }),
        ),
      ),
    );
  }
}
