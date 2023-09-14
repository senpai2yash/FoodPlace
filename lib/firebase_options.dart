
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.

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
    apiKey: 'AIzaSyDirqDC52KFHkYFl-8cIni2V7vxIv2WW6c',
    appId: '1:32050879444:web:01a2240ead85dd4bc61441',
    messagingSenderId: '32050879444',
    projectId: 'authtutorial-d7d5c',
    authDomain: 'authtutorial-d7d5c.firebaseapp.com',
    storageBucket: 'authtutorial-d7d5c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDkQ_A1-YU5-Y-k75f7iZv8jcYxhHJq26s',
    appId: '1:32050879444:android:0b2768ae8a3b1d1ac61441',
    messagingSenderId: '32050879444',
    projectId: 'authtutorial-d7d5c',
    storageBucket: 'authtutorial-d7d5c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCzVBGaX4DSCcXKY3dqPiIqhi2tOMrIo6I',
    appId: '1:32050879444:ios:8719c8a953fac7a2c61441',
    messagingSenderId: '32050879444',
    projectId: 'authtutorial-d7d5c',
    storageBucket: 'authtutorial-d7d5c.appspot.com',
    iosClientId: '32050879444-55cbca32liel6rmktajt6gr8arkotddq.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodplace',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCzVBGaX4DSCcXKY3dqPiIqhi2tOMrIo6I',
    appId: '1:32050879444:ios:eee4003c0ba36862c61441',
    messagingSenderId: '32050879444',
    projectId: 'authtutorial-d7d5c',
    storageBucket: 'authtutorial-d7d5c.appspot.com',
    iosClientId: '32050879444-ua1qbkrvthvrl94pnpr8me70hibhrtvg.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodplace.RunnerTests',
  );
}
