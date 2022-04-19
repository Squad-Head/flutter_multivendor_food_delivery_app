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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDExo0UHHQhYhGS0ih_8MFiZ5zuJvK3BE8',
    appId: '1:134292426663:android:8a7b4b85bec38715543082',
    messagingSenderId: '134292426663',
    projectId: 'fooddelivery-a84d4',
    storageBucket: 'fooddelivery-a84d4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_MPVsPAcxRqM673lhqtdaDghZf_lAnjI',
    appId: '1:134292426663:ios:b50d417e5bd38e53543082',
    messagingSenderId: '134292426663',
    projectId: 'fooddelivery-a84d4',
    storageBucket: 'fooddelivery-a84d4.appspot.com',
    iosClientId: '134292426663-i1gaa9hji56i823i52cdo799fqgg0g5s.apps.googleusercontent.com',
    iosBundleId: 'y',
  );
}
