import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/core/providers/search_page_controller.dart';
import 'package:wallpaper_app/features/presentation/bloc/search_image/search_image_cubit.dart';
import 'package:wallpaper_app/features/presentation/widget/wallpaper_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key, required this.query}) : super(key: key);
  final String query;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with SearchPageController{

  @override
  void initState() {
    scrollController = ScrollController();
    context.read<SearchImageCubit>().searchAllImage(widget.query);
    super.initState();
  }

  @override
  void dispose() {
    scrollController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var searchState = context.watch<SearchImageCubit>().state;
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
            }
            ),
      ),
    );
  }
}
