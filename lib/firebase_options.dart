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
    apiKey: 'AIzaSyBuBcEjLjZfieTWoaPVY0my_7sQHSF8MVU',
    appId: '1:777443582790:web:61dd858b67a728c3043b47',
    messagingSenderId: '777443582790',
    projectId: 'tpflutter-e9709',
    authDomain: 'tpflutter-e9709.firebaseapp.com',
    storageBucket: 'tpflutter-e9709.appspot.com',
    measurementId: 'G-1BN2T3QHVN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsvIzIV1MPhloAaNWHjpilsPkyF56M1Z4',
    appId: '1:777443582790:android:a55c26e84260099c043b47',
    messagingSenderId: '777443582790',
    projectId: 'tpflutter-e9709',
    storageBucket: 'tpflutter-e9709.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDxx60YuNMaK_xLHIZUI3GeG9vs2L2NUag',
    appId: '1:777443582790:ios:66cd39ee36e3670d043b47',
    messagingSenderId: '777443582790',
    projectId: 'tpflutter-e9709',
    storageBucket: 'tpflutter-e9709.appspot.com',
    iosClientId: '777443582790-l6lvs8v6lg774upcmclorn13suhugrct.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseauth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDxx60YuNMaK_xLHIZUI3GeG9vs2L2NUag',
    appId: '1:777443582790:ios:66cd39ee36e3670d043b47',
    messagingSenderId: '777443582790',
    projectId: 'tpflutter-e9709',
    storageBucket: 'tpflutter-e9709.appspot.com',
    iosClientId: '777443582790-l6lvs8v6lg774upcmclorn13suhugrct.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseauth',
  );
}
