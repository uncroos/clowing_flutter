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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDo_PCfcaldWaIVBGpqy1aMIUD-wCEX6U8',
    appId: '1:469094508970:web:e15a17acf5563c0c9fa3d3',
    messagingSenderId: '469094508970',
    projectId: 'clowing-6a788',
    authDomain: 'clowing-6a788.firebaseapp.com',
    storageBucket: 'clowing-6a788.appspot.com',
    measurementId: 'G-8FVR716KRG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHYZ1E7HcVaNXOm909ENQSnfsgn3JwFEA',
    appId: '1:469094508970:android:2c09ee1885abb8a89fa3d3',
    messagingSenderId: '469094508970',
    projectId: 'clowing-6a788',
    storageBucket: 'clowing-6a788.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEEmTUnGPc_dMAQ4nunNOo_AH-c8M4dWA',
    appId: '1:469094508970:ios:caf6d7fc5d80a8f19fa3d3',
    messagingSenderId: '469094508970',
    projectId: 'clowing-6a788',
    storageBucket: 'clowing-6a788.appspot.com',
    iosBundleId: 'com.example.clowingFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCEEmTUnGPc_dMAQ4nunNOo_AH-c8M4dWA',
    appId: '1:469094508970:ios:caf6d7fc5d80a8f19fa3d3',
    messagingSenderId: '469094508970',
    projectId: 'clowing-6a788',
    storageBucket: 'clowing-6a788.appspot.com',
    iosBundleId: 'com.example.clowingFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDo_PCfcaldWaIVBGpqy1aMIUD-wCEX6U8',
    appId: '1:469094508970:web:bc8c0bd0ff52cf789fa3d3',
    messagingSenderId: '469094508970',
    projectId: 'clowing-6a788',
    authDomain: 'clowing-6a788.firebaseapp.com',
    storageBucket: 'clowing-6a788.appspot.com',
    measurementId: 'G-SX6952GP4C',
  );

}