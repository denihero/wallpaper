import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/core/providers/home_page_controller.dart';
import 'package:wallpaper_app/features/presentation/bloc/get_all_image/get_image_cubit.dart';
import 'package:wallpaper_app/features/presentation/screens/page/custom_search.dart';
import 'package:wallpaper_app/features/presentation/widget/wallpaper_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomePageController {
  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final stateOfGeneralPage = context.watch<GetImageCubit>().state;
    setupController(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Wallpaper',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearch(
                    ),
                  );

                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: stateOfGeneralPage.when(
              initial: () => const SizedBox(),
              loading: () => const CircularProgressIndicator(),
              error: () => const Text('Something get wrong'),
              success: (wallpaper, imagePerCount) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GridView.builder(
                        controller: scrollController,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 0.45,
                                crossAxisCount: 3,
                                mainAxisSpacing: 3,
                                crossAxisSpacing: 3),
                        itemCount: wallpaper.length,
                        itemBuilder: (context, index) {
                          return WallpaperCard(
                            photo: wallpaper[index],
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ));
  }
}
