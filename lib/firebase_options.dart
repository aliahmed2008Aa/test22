// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBQrPJr9XcrGAou8W7ZVycGGIQ5vaBatfg',
    appId: '1:451424565349:web:432361cc3bd4210abf2e8c',
    messagingSenderId: '451424565349',
    projectId: 'path-tok',
    authDomain: 'path-tok.firebaseapp.com',
    storageBucket: 'path-tok.appspot.com',
    measurementId: 'G-HCPW2VEV9M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDAFMRnJDuihn8pP0-eIb3SlvcELS8P7-Y',
    appId: '1:451424565349:android:4f1e8f582d751184bf2e8c',
    messagingSenderId: '451424565349',
    projectId: 'path-tok',
    storageBucket: 'path-tok.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7p0fh8zNwJ6LFol0RDn38KDcPNaDJl2U',
    appId: '1:451424565349:ios:8b5a5f0b72d9b025bf2e8c',
    messagingSenderId: '451424565349',
    projectId: 'path-tok',
    storageBucket: 'path-tok.appspot.com',
    iosClientId: '451424565349-rrqfk5493qd5drf7vfl67hq9v89p6i4c.apps.googleusercontent.com',
    iosBundleId: 'com.example.sampark',
  );
}