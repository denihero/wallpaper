import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/wallpaper.dart';
import 'package:wallpaper_app/core/models/screen.dart';
import 'package:wallpaper_app/uikit/string_to_double.dart';

class DetailPageController {
  Stream<String>? progressString;
  ValueNotifier<String> res = ValueNotifier('');
  ValueNotifier<bool> isDownloading = ValueNotifier(false);

  Future<void> applyWallpaper(
      BuildContext context, Screen screen, String? image) async {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    //Downloading image
    progressString = Wallpaper.imageDownloadProgress(image!);

    progressString?.listen(
      (data) {
        res.value = data;
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

  Widget imageDownloadDialog() {
    return Container(
        height: 120.0,
        width: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: ValueListenableBuilder(
            valueListenable: res,
            builder: (BuildContext context, String value, __) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Downloading File : $value",
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CircularProgressIndicator(
                    value: reformatStringToDouble(value),
                  ),
                  const SizedBox(height: 20.0)
                ],
              );
            }));
  }

  static showSnackBar(String text, BuildContext context, Color color) {
    final snackBar = SnackBar(
        behavior: SnackBarBehavior.floating,
        width: 200,
        duration: const Duration(milliseconds: 1500),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        backgroundColor: color,
        content: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white),
        ));
    //I do it when we click multiple time to button and he is stack all message
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
