import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/features/presentation/bloc/search_image/search_image_cubit.dart';

import '../../widget/wallpaper_card.dart';

class CustomSearch extends SearchDelegate {
  @override
  TextInputAction get textInputAction => TextInputAction.done;

  ScrollController scrollController = ScrollController();
  bool isTrigger = false;

  void setupController(BuildContext context) {
    scrollController.addListener(() {
      var nextPageTrigger = 0.8 * scrollController.position.maxScrollExtent;
      if (scrollController.position.pixels > nextPageTrigger) {
        if (isTrigger == false) {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            context.read<SearchImageCubit>().searchAllImage(query);
          });
          isTrigger = true;
        } else {
          return;
        }
      } else {
        isTrigger = false;
      }
    });
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear_rounded)),
      IconButton(
        onPressed: () {
          if (query.isNotEmpty) {
            BlocProvider.of<SearchImageCubit>(context, listen: false)
                .newList
                .clear();
            BlocProvider.of<SearchImageCubit>(context, listen: false)
                .hashList
                .clear();
            BlocProvider.of<SearchImageCubit>(context, listen: false).page = 1;
            BlocProvider.of<SearchImageCubit>(context, listen: false)
                .searchAllImage(query);
          }
        },
        icon: const Icon(Icons.search),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          BlocProvider.of<SearchImageCubit>(context, listen: false)
              .newList
              .clear();
          close(context, false);
        },
        icon: const Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    var searchState = context.watch<SearchImageCubit>().state;
    setupController(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: searchState.when(
            initial: () => const SizedBox(),
            loading: () => const CircularProgressIndicator(),
            error: () => const Center(child: Text('Search get wrong')),
            success: (wallpaper, hashes) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: GridView.builder(
                      key: const PageStorageKey<String>('listvew1'),
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
                          blueHash: hashes[index],
                        );
                      },
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(child: Container());
  }
}
