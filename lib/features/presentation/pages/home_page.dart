import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/core/providers/home_page_controller.dart';
import 'package:wallpaper_app/features/presentation/widget/bounce_loading.dart';
import 'package:wallpaper_app/features/presentation/widget/prev_next_widget.dart';
import 'package:wallpaper_app/features/presentation/widget/wallpaper_card.dart';

import '../bloc/get_all_image/get_image_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomePageController {
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetImageCubit>().state;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
            success: (wallpaper, imagePerCount) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ValueListenableBuilder(
                      valueListenable: imagePerPage,
                      builder:
                          (BuildContext context, int imagePerPageValue, _) {
                        return GridView.builder(
                            controller: scrollController
                              ?..addListener(() {
                                if (scrollController!.offset ==
                                    scrollController!
                                        .position.maxScrollExtent) {
                                  if (imagePerPage.value != imagePerCount) {
                                    imagePerPage.value += 13;
                                  }
                                }
                              }),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 0.45,
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 3,
                                    crossAxisSpacing: 3),
                            itemCount: imagePerPageValue,
                            itemBuilder: (context, index) {
                              return WallpaperCard(
                                photo: wallpaper[index],
                              );
                            });
                      },
                    ),
                  ),
                  PrevNextWidget(
                      prevButton: () {
                        if (context.read<GetImageCubit>().page == 1) {
                          return;
                        } else {
                          context.read<GetImageCubit>().page--;
                        }
                        context.read<GetImageCubit>().getImages();
                      },
                      nextButton: () {
                        context.read<GetImageCubit>().page++;
                        context.read<GetImageCubit>().getImages();
                      },
                      page: '${context.read<GetImageCubit>().page}')
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
