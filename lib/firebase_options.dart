// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDGLbmH4fYWRpS0EwsIZ35X1kSq8vWmE0I',
    appId: '1:1002392156484:web:7f285a1ef0b38cc7597f11',
    messagingSenderId: '1002392156484',
    projectId: 'hbgame-60c95',
    authDomain: 'hbgame-60c95.firebaseapp.com',
    databaseURL: 'https://hbgame-60c95-default-rtdb.firebaseio.com',
    storageBucket: 'hbgame-60c95.appspot.com',
    measurementId: 'G-STCF15QED3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJhHPcs_7phWpMR9tYB8O4t68t1oQRv10',
    appId: '1:1002392156484:android:39726108745e0874597f11',
    messagingSenderId: '1002392156484',
    projectId: 'hbgame-60c95',
    databaseURL: 'https://hbgame-60c95-default-rtdb.firebaseio.com',
    storageBucket: 'hbgame-60c95.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmnzXle8iV-dYAI9sOHY9bv3YzNpq8rd4',
    appId: '1:1002392156484:ios:652847eda82f46aa597f11',
    messagingSenderId: '1002392156484',
    projectId: 'hbgame-60c95',
    databaseURL: 'https://hbgame-60c95-default-rtdb.firebaseio.com',
    storageBucket: 'hbgame-60c95.appspot.com',
    iosClientId: '1002392156484-kf27hc5r35lno0ajtav75qelg1uv80r8.apps.googleusercontent.com',
    iosBundleId: 'com.example.caranaSquare',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBmnzXle8iV-dYAI9sOHY9bv3YzNpq8rd4',
    appId: '1:1002392156484:ios:652847eda82f46aa597f11',
    messagingSenderId: '1002392156484',
    projectId: 'hbgame-60c95',
    databaseURL: 'https://hbgame-60c95-default-rtdb.firebaseio.com',
    storageBucket: 'hbgame-60c95.appspot.com',
    iosClientId: '1002392156484-kf27hc5r35lno0ajtav75qelg1uv80r8.apps.googleusercontent.com',
    iosBundleId: 'com.example.caranaSquare',
  );
}