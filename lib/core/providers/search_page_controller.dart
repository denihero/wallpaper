import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/features/presentation/bloc/search_image/search_image_cubit.dart';

import '../../features/presentation/bloc/get_all_image/get_image_cubit.dart';

class SearchPageController {
  ScrollController? scrollController;
  bool isTrigger = false;

  void setupController(BuildContext context, String query) {
    scrollController?.addListener(() {
      var nextPageTrigger = 0.8 * scrollController!.position.maxScrollExtent;
      if (scrollController!.position.pixels > nextPageTrigger) {
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
}
