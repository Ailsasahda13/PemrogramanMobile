import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyBnYd0SgFOpPc3y4FWomDtW25PsByVhgJo',
    appId: '1:564594422509:web:35559ca3de7061402e52e4',
    messagingSenderId: '564594422509',
    projectId: 'login-weather-ailsa',
    authDomain: 'login-weather-ailsa.firebaseapp.com',
    storageBucket: 'login-weather-ailsa.firebasestorage.app',
    measurementId: 'G-8YSX8KC1G1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyALsTDf1sz3MOGbOJve1NpS_AGsk71lNd4',
    appId: '1:564594422509:android:53ac6f2d102e51cf2e52e4',
    messagingSenderId: '564594422509',
    projectId: 'login-weather-ailsa',
    storageBucket: 'login-weather-ailsa.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzfwFZVAu6tX9TlDIKLrKA41Nw0sO3odw',
    appId: '1:564594422509:ios:e3d0a749a38171882e52e4',
    messagingSenderId: '564594422509',
    projectId: 'login-weather-ailsa',
    storageBucket: 'login-weather-ailsa.firebasestorage.app',
    iosBundleId: 'com.example.flutterLogin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBzfwFZVAu6tX9TlDIKLrKA41Nw0sO3odw',
    appId: '1:564594422509:ios:e3d0a749a38171882e52e4',
    messagingSenderId: '564594422509',
    projectId: 'login-weather-ailsa',
    storageBucket: 'login-weather-ailsa.firebasestorage.app',
    iosBundleId: 'com.example.flutterLogin',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBnYd0SgFOpPc3y4FWomDtW25PsByVhgJo',
    appId: '1:564594422509:web:cc29313933cfa0622e52e4',
    messagingSenderId: '564594422509',
    projectId: 'login-weather-ailsa',
    authDomain: 'login-weather-ailsa.firebaseapp.com',
    storageBucket: 'login-weather-ailsa.firebasestorage.app',
    measurementId: 'G-GH10SRP0JZ',
  );
}
