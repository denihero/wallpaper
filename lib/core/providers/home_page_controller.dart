import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/presentation/bloc/get_all_image/get_image_cubit.dart';

class HomePageController {
  ScrollController? scrollController;
  bool isTrigger = false;
  bool isGetRequest = false;

  void setupController(BuildContext context) async {
    scrollController?.addListener(() {
      var nextPageTrigger = 0.8 * scrollController!.position.maxScrollExtent;
      if (scrollController!.position.pixels > nextPageTrigger) {
        if (isTrigger == false && isGetRequest == false) {
          isGetRequest = true;
          isTrigger = true;
          context.read<GetImageCubit>().getImages();
        } else {
          return;
        }
      } else {
        isTrigger = false;
      }
    });
  }
}
