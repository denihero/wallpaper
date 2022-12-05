import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/core/providers/general_page_controller.dart';
import 'package:wallpaper_app/features/presentation/bloc/get_all_image/get_image_cubit.dart';

import '../../widget/wallpaper_card.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({Key? key}) : super(key: key);


  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> with GeneralPageController {

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
    return Center(
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
    );
  }
}
