import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class DownloadWidget extends StatelessWidget {
  const DownloadWidget({Key? key, required this.isCompleteDownloading}) : super(key: key);

  final bool isCompleteDownloading;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: isCompleteDownloading
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Скачивание завершено',style: TextStyle(fontSize: 16),),
                  Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 50,
                  )
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Скачивается',style: TextStyle(fontSize: 20)),
                  const SizedBox(
                    height: 10,
                  ),
                  LoadingAnimationWidget.waveDots(color: Colors.black, size: 20)
                ],
              ));
  }
}
