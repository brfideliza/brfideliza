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
    apiKey: 'AIzaSyD5yYQc40-IyUIeL5wdBmmimpipP_guPbw',
    appId: '1:87152115420:web:2cb96b5565f95c88d1fe19',
    messagingSenderId: '87152115420',
    projectId: 'brfideliza-ab651',
    authDomain: 'brfideliza-ab651.firebaseapp.com',
    storageBucket: 'brfideliza-ab651.appspot.com',
    measurementId: 'G-WJ151NFMYQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBF86R2_VigEY4LNbVwsFL9G7974OlN3zg',
    appId: '1:87152115420:android:c388d8e91ffed568d1fe19',
    messagingSenderId: '87152115420',
    projectId: 'brfideliza-ab651',
    storageBucket: 'brfideliza-ab651.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCn_7lbxhIJ1K3UULonNfcMN6Gn18L5JIs',
    appId: '1:87152115420:ios:73666901e80488dad1fe19',
    messagingSenderId: '87152115420',
    projectId: 'brfideliza-ab651',
    storageBucket: 'brfideliza-ab651.appspot.com',
    androidClientId: '87152115420-dv3iknchjm677s5kcokuhlr689p7vv9q.apps.googleusercontent.com',
    iosClientId: '87152115420-usglb9n4aecgr6a0te3l242sjmgdsigb.apps.googleusercontent.com',
    iosBundleId: 'com.example.appFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCn_7lbxhIJ1K3UULonNfcMN6Gn18L5JIs',
    appId: '1:87152115420:ios:5ed1ea7ffae38972d1fe19',
    messagingSenderId: '87152115420',
    projectId: 'brfideliza-ab651',
    storageBucket: 'brfideliza-ab651.appspot.com',
    androidClientId: '87152115420-dv3iknchjm677s5kcokuhlr689p7vv9q.apps.googleusercontent.com',
    iosClientId: '87152115420-io4v551ks4ai6av66mfpgq8dsdcibvkv.apps.googleusercontent.com',
    iosBundleId: 'com.example.appFlutter.RunnerTests',
  );
}