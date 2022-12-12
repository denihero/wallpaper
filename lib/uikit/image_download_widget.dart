import 'package:flutter/material.dart';
import 'package:wallpaper_app/uikit/string_to_double.dart';

class ImageDownloadAndInstall extends StatelessWidget {
  const ImageDownloadAndInstall({Key? key, required this.res})
      : super(key: key);

  final ValueNotifier<String> res;

  @override
  Widget build(BuildContext context) {
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
        },
      ),
    );
  }
}
