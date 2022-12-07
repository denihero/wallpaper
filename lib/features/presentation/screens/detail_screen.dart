import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:wallpaper_app/core/models/image.dart';
import 'package:wallpaper_app/core/models/screen.dart';
import 'package:wallpaper_app/core/providers/detail_page_controller.dart';
import 'package:wallpaper_app/features/presentation/widget/download_widget.dart';
import 'package:wallpaper_app/features/presentation/widget/internet_image.dart';
import 'package:wallpaper_app/features/presentation/widget/wallpaper_icon.dart';
import 'package:wallpaper_app/features/presentation/widget/wallpaper_info_card.dart';
import 'package:wallpaper_app/uikit/image_download_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    Key? key,
    this.photo,
  }) : super(key: key);

  final Photo? photo;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with DetailPageController {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: isVisible,
        builder: (BuildContext context, isVisibleValue, __) => GestureDetector(
          onLongPressStart: (details) {
            isVisible.value = !isVisible.value;
          },
          onLongPressUp: () {
            isVisible.value = !isVisible.value;
          },
          child: Stack(
            children: [
              InternetImage(
                image: widget.photo!.src!.portrait!,
                height: height,
                width: width,
              ),
              Visibility(
                visible: isVisibleValue,
                child: Positioned(
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
                                      author: widget.photo!.photographer!,
                                      width: widget.photo!.width!,
                                      height: widget.photo!.height!);
                                });
                          },
                          text: 'Info',
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Visibility(
                          visible: isVisibleValue,
                          child: WallpaperIcon(
                            icon: const Icon(
                              Icons.download,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              saveInternetImageToGallery(
                                  widget.photo!.src!.original!);
                            },
                            text: 'Download',
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Visibility(
                          visible: isVisibleValue,
                          child: WallpaperIcon(
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
                                            leading: const Icon(Icons.home),
                                            onTap: () async {
                                              setState(() {});
                                              Navigator.pop(context);
                                              await applyWallpaper(
                                                  context,
                                                  Screen.HomeScren,
                                                  widget.photo!.src!.original!,

                                              );
                                            },
                                          ),
                                          ListTile(
                                            title: const Text('Lock screen'),
                                            leading: const Icon(Icons.lock),
                                            onTap: () async {
                                              Navigator.pop(context);
                                              await applyWallpaper(
                                                  context,
                                                  Screen.LockScreen,
                                                  widget.photo!.src!.original!);
                                            },
                                          ),
                                          ListTile(
                                            title: const Text('Both'),
                                            leading: const Icon(
                                                Icons.system_security_update),
                                            onTap: () async {
                                              Navigator.pop(context);
                                              await applyWallpaper(
                                                  context,
                                                  Screen.Both,
                                                  widget.photo!.src!.original!);
                                            },
                                          )
                                        ],
                                      ),
                                    );
                                  });
                              //await downloadImage(context);
                            },
                            backgroundColor:
                                const Color.fromRGBO(64, 100, 245, 1),
                            text: 'Apply',
                          ),
                        ),
                      ],
                    )),
              ),
              Visibility(
                visible: isVisibleValue,
                child: Positioned(
                  top: 20,
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
              ),
              ValueListenableBuilder(
                valueListenable: isDownloadingForApply,
                builder: (BuildContext context, bool value, __) {
                  return Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: value
                          ? imageInstallAndDownloadDialog(percentDownloading)
                          : const SizedBox(),
                    ),
                  );
                },
              ),
              AnimatedBuilder(
                animation: Listenable.merge([isCompleteDownloading,isDownloading]),
                builder: (BuildContext context,_) {
                  return Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: isDownloading.value
                          ? DownloadWidget(isCompleteDownloading: isCompleteDownloading.value)
                          : const SizedBox(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
