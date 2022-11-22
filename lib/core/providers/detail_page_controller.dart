import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/wallpaper.dart';
import 'package:wallpaper_app/core/models/screen.dart';
import 'package:wallpaper_app/uikit/string_to_double.dart';

class DetailPageController {
  Stream<String>? progressString;
  ValueNotifier<String> percentDownloading = ValueNotifier('');
  ValueNotifier<bool> isDownloading = ValueNotifier(false);

  Future<void> applyWallpaper(
      BuildContext context, Screen screen, String? image) async {
    //Downloading image
    progressString = Wallpaper.imageDownloadProgress(image!);

    progressString?.listen(
      (data) {
        percentDownloading.value = data;
        isDownloading.value = true;
      },
      onDone: () async {
        //Choose with screen install
        isDownloading.value = false;
        switch (screen) {
          case Screen.HomeScren:
            await Wallpaper.homeScreen(
              options: RequestSizeOptions.RESIZE_FIT,
            );
            break;
          case Screen.LockScreen:
            await Wallpaper.lockScreen(
              options: RequestSizeOptions.RESIZE_FIT,
            );
            break;
          case Screen.Both:
            await Wallpaper.bothScreen(
              options: RequestSizeOptions.RESIZE_FIT,
            );
            break;
        }
      },
      onError: (error) {
        return showDialog(
            context: context,
            builder: (context) {
              return Text('$error');
            });
      },
    );
  }
}
