import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static Future initialize(
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin,
  ) async {
    var androidInitialize = new AndroidInitializationSettings('mipmap/alarm');
    // var iOSInitialize = new IOSInitializationSettings();
    var initializationsSettings = new InitializationSettings(
      android: androidInitialize,
      // ios: iOSInitialize
    );
    await flutterLocalNotificationsPlugin.initialize(initializationsSettings);
  }

  static Future showBigTextNotification({
    var id = 0,
    required String title,
    required String body,
    var payload,
    required FlutterLocalNotificationsPlugin fln,
  }) async {
    AndroidNotificationDetails androidPlatformChannelSpecifics =
        new AndroidNotificationDetails(
          'you_can_name_it_whatever13',
          ' channel_name',
          playSound: true,
          sound: RawResourceAndroidNotificationSound('security'),
          importance: Importance.max,
          priority: Priority.high,
        ); // AndroidNotificationDetails
    var not = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    ); // NotificationDetails
    await fln.show(0, title, body, not);
  }
}
