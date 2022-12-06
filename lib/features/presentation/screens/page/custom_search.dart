import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/features/presentation/bloc/search_image/search_image_cubit.dart';

import '../../widget/wallpaper_card.dart';

class CustomSearch extends SearchDelegate {

  @override
  TextInputAction get textInputAction => TextInputAction.done;

  ScrollController scrollController = ScrollController();
  bool isTrigger = false;

  void setupController(BuildContext context, String query) {
    scrollController.addListener(() {
      var nextPageTrigger = 0.8 * scrollController.position.maxScrollExtent;
      if (scrollController.position.pixels > nextPageTrigger) {
        if (isTrigger == false) {
          context.read<SearchImageCubit>().searchAllImage(query);
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
          BlocProvider.of<SearchImageCubit>(context, listen: false).searchAllImage(query);
        },
        icon: Icon(Icons.search),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, false);
        },
        icon: const Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    var searchState = context.watch<SearchImageCubit>().state;
    setupController(context, query);
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: searchState.when(
            initial: () => const SizedBox(),
            loading: () => const CircularProgressIndicator(),
            error: () => const Center(child: Text('Search get wrong')),
            success: (wallpaper) {
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
            }),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var searchState = context.watch<SearchImageCubit>().state;
    // Timer(Duration(milliseconds: 800), () {
    //   context.read<SearchImageCubit>().searchAllImage(query);
    // });
    setupController(context, query);
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: searchState.when(
            initial: () => const SizedBox(),
            loading: () => const CircularProgressIndicator(),
            error: () => const Center(child: Text('Search get wrong')),
            success: (wallpaper) {
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
            }),
      ),
    );
  }
}
