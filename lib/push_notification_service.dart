import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  final fcm = FirebaseMessaging.instance;

  Future initialise() async {
    /// foreground handler
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {});

    try {
      FirebaseMessaging.onBackgroundMessage((RemoteMessage message) async {});
    } catch (err) {
      // Dont do anything
    }

    /// handler if the app has been opened from a background state
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {});
  }
}
