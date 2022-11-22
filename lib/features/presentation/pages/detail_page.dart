import 'package:flutter/material.dart';
import 'package:wallpaper/wallpaper.dart';
import 'package:wallpaper_app/core/models/screen.dart';
import 'package:wallpaper_app/core/providers/detail_page_controller.dart';
import 'package:wallpaper_app/features/presentation/widget/internet_image.dart';
import 'package:wallpaper_app/features/presentation/widget/wallpaper_icon.dart';
import 'package:wallpaper_app/features/presentation/widget/wallpaper_info_card.dart';
import 'package:wallpaper_app/uikit/image_download_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, this.image, this.author, this.width, this.height,})
      : super(key: key);

  final String? image;
  final String? author;
  final int? width, height;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with DetailPageController {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          InternetImage(
            image: widget.image!,
            height: height,
            width: width,
          ),
          Positioned(
              bottom: 10,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  WallpaperIcon(
                    icon: const Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return wallpaperInfoCard(
                                author: widget.author!,
                                width: widget.width!,
                                height: widget.height!);
                          });
                    },
                    text: 'Info',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  WallpaperIcon(
                    icon: const Icon(
                      Icons.format_paint,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              height: 170,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: const Text('Home screen'),
                                    onTap: () async {
                                      setState(() {});
                                      Navigator.pop(context);
                                      await applyWallpaper(context,
                                          Screen.HomeScren, widget.image);
                                    },
                                  ),
                                  ListTile(
                                    title: const Text('Lock screen'),
                                    onTap: () async {
                                      Navigator.pop(context);
                                      await applyWallpaper(context,
                                          Screen.LockScreen, widget.image);
                                    },
                                  ),
                                  ListTile(
                                    title: const Text('Both'),
                                    onTap: () async {
                                      Navigator.pop(context);
                                      await applyWallpaper(
                                          context, Screen.Both, widget.image);
                                    },
                                  )
                                ],
                              ),
                            );
                          });
                      //await downloadImage(context);
                    },
                    backgroundColor: const Color.fromRGBO(64, 100, 245, 1),
                    text: 'Apply',
                  ),
                ],
              )),
          Positioned(
            top: 30,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          ValueListenableBuilder(
            valueListenable: isDownloading,
            builder: (BuildContext context, bool value, __) {
              return Positioned.fill(
                  child: Align(
                alignment: Alignment.center,
                child: value
                    ? imageDownloadDialog(percentDownloading)
                    : const SizedBox(),
              ));
            },
          )
        ],
      ),
    );
  }
}
