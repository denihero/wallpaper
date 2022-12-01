import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/app.dart';
import 'package:wallpaper_app/service_locator.dart' as di;
import 'package:wallpaper_app/uikit/bloc_observer.dart';

import 'locale_notification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  Bloc.observer = SimpleBlocObserver();
  await LocalNoticeService().setup();

  runApp(const App());
}
