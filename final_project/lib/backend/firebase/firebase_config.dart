import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAa2ljrjiZTXIjlT0dTtmLW15jNHVw0lrc",
            authDomain: "i-n-f-o6350final-ptroje-6wewq0.firebaseapp.com",
            projectId: "i-n-f-o6350final-ptroje-6wewq0",
            storageBucket: "i-n-f-o6350final-ptroje-6wewq0.appspot.com",
            messagingSenderId: "270554075942",
            appId: "1:270554075942:web:3cac97adf95741a9d5a7e7"));
  } else {
    await Firebase.initializeApp();
  }
}
