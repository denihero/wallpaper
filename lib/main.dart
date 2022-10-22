import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wallpaper/wallpaper.dart';
import 'package:wallpaper_app/app.dart';
import 'package:wallpaper_app/service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const App());

}

