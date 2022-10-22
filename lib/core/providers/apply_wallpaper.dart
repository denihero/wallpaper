import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/wallpaper.dart';
import 'package:wallpaper_app/core/models/screen.dart';

class DetailPageController {

  Stream<String>? progressString;
  String? res;

  Future<void> applyWallpaper(BuildContext context,Screen screen,String? image) async {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    //Downloading image
    progressString = Wallpaper.imageDownloadProgress(image!);

    progressString?.listen((data) {
        res = data;
    }, onDone: () async {
      //Choose with screen install
      switch (screen) {
        case Screen.HomeScren:
          await Wallpaper.homeScreen(
              options: RequestSizeOptions.RESIZE_EXACT,
              width: width,
              height: height,
          );
          break;
        case Screen.LockScreen:
          await Wallpaper.lockScreen(
              options: RequestSizeOptions.RESIZE_EXACT,
              width: width,
              height: height);
          break;
        case Screen.Both:
          await Wallpaper.bothScreen(
              options: RequestSizeOptions.RESIZE_EXACT,
              width: width,
              height: height);
          break;
      }
    }, onError: (error) {
      return showDialog(context: context, builder: (context){
        return Text('$error');
      });
    },);
}
}
