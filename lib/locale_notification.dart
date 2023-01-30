    import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNoticeService {
  static final _localNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> setup() async {
    const androidSetting = AndroidInitializationSettings('@mipmap/ic_launcher');

    const initSettings = InitializationSettings(android: androidSetting);

    await _localNotificationsPlugin.initialize(initSettings).then((_) {
      print('setupPlugin: setup success');
    }).catchError((Object error) {
      print('Error: $error');
    });
  }

  Future<void> showNotification(
      String notificationTitle, String notificationBody) async {
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
        'your channel id', 'your channel name',
        importance: Importance.low, priority: Priority.defaultPriority, ticker: 'ticker',playSound: false);

    var platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await FlutterLocalNotificationsPlugin().show(
        0, notificationTitle, notificationBody, platformChannelSpecifics,
        payload: 'item x');
  }
}
