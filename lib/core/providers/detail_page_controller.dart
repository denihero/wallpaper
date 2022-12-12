import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:wallpaper/wallpaper.dart';
import 'package:wallpaper_app/core/models/screen.dart';
import 'package:wallpaper_app/locale_notification.dart';

class DetailPageController {
  Stream<String>? progressString;
  ValueNotifier<String> percentDownloading = ValueNotifier('');
  ValueNotifier<bool> isDownloadingForApply = ValueNotifier(false);
  ValueNotifier<bool> isDownloading = ValueNotifier(false);
  ValueNotifier<bool> isCompleteDownloading = ValueNotifier(false);
  ValueNotifier<bool> isVisible = ValueNotifier(true);

  Future<void> applyWallpaper(
      BuildContext context, Screen screen, String? image) async {
    //Downloading image
    progressString = Wallpaper.imageDownloadProgress(image!);

    progressString?.listen(
      (data) {
        percentDownloading.value = data;
        isDownloadingForApply.value = true;
      },
      onDone: () async {
        //Choose with screen install
        switch (screen) {
          case Screen.HomeScren:
            await Wallpaper.homeScreen(
              options: RequestSizeOptions.RESIZE_INSIDE,
            );
            isDownloadingForApply.value = false;
            LocalNoticeService()
                .showNotification('Обои успешно установлены!', '');
            break;

          case Screen.LockScreen:
            await Wallpaper.lockScreen(
              options: RequestSizeOptions.RESIZE_FIT,
            );
            isDownloadingForApply.value = false;

            LocalNoticeService()
                .showNotification('Обои успешно установлены!', '');

            break;
          case Screen.Both:
            await Wallpaper.bothScreen(
              options: RequestSizeOptions.RESIZE_FIT,
            );
            isDownloadingForApply.value = false;

            LocalNoticeService()
                .showNotification('Обои успешно установлены!', '');
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

  Future<void> saveInternetImageToGallery(String? path) async {
    isDownloading.value = true;
    GallerySaver.saveImage(path!, albumName: 'Wallpaper Image')
        .whenComplete(() {
      isCompleteDownloading.value = true;
      Timer(const Duration(seconds: 2), () {
        isDownloading.value = false;
        isCompleteDownloading.value = false;
      });
    });
  }
}
