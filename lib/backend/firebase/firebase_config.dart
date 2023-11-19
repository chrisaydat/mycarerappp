import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA4JowfHZWOBKeoPtaTkJqxQ7_FWH5diq0",
            authDomain: "mycarermobileapp.firebaseapp.com",
            projectId: "mycarermobileapp",
            storageBucket: "mycarermobileapp.appspot.com",
            messagingSenderId: "382299148303",
            appId: "1:382299148303:web:eb17aea9a5c5789fbcd37a",
            measurementId: "G-VCK5CT1L9C"));
  } else {
    await Firebase.initializeApp();
  }
}
