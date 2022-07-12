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
    apiKey: 'AIzaSyD69Br8PuULsoMdYM7FAZHB5Xh084uPUsI',
    appId: '1:237918442237:web:d572cebb6d5203b7e42494',
    messagingSenderId: '237918442237',
    projectId: 'mylaundry-project',
    authDomain: 'mylaundry-project.firebaseapp.com',
    storageBucket: 'mylaundry-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXgIJKk0LKVEXzcVqmv3kh6_mIaEp_0f4',
    appId: '1:237918442237:android:014cd20c76881dd2e42494',
    messagingSenderId: '237918442237',
    projectId: 'mylaundry-project',
    storageBucket: 'mylaundry-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBo7SQTl19Ip-bEN2vsU1iB7Cd21dCa_f8',
    appId: '1:237918442237:ios:a404a5396e7f094ee42494',
    messagingSenderId: '237918442237',
    projectId: 'mylaundry-project',
    storageBucket: 'mylaundry-project.appspot.com',
    iosClientId: '237918442237-4qmh6e2ssv01q6nfi6h451l42i9m5jet.apps.googleusercontent.com',
    iosBundleId: 'com.kodenatan.mylaundry.mylaundry',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBo7SQTl19Ip-bEN2vsU1iB7Cd21dCa_f8',
    appId: '1:237918442237:ios:a404a5396e7f094ee42494',
    messagingSenderId: '237918442237',
    projectId: 'mylaundry-project',
    storageBucket: 'mylaundry-project.appspot.com',
    iosClientId: '237918442237-4qmh6e2ssv01q6nfi6h451l42i9m5jet.apps.googleusercontent.com',
    iosBundleId: 'com.kodenatan.mylaundry.mylaundry',
  );
}
