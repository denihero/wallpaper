import 'dart:io';

import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wallpaper_app/app.dart';
import 'package:wallpaper_app/service_locator.dart' as di;
import 'package:wallpaper_app/uikit/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  Directory tempDir = await getTemporaryDirectory();
  await FastCachedImageConfig.init(path: tempDir.path, clearCacheAfter: const Duration(days: 15));
  Bloc.observer = SimpleBlocObserver();
  runApp(const App());
}
