import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCGjDSREhMp9xKPXmy2oz5OHbQCyRIGquU",
            authDomain: "ticket-management-app-b8052.firebaseapp.com",
            projectId: "ticket-management-app-b8052",
            storageBucket: "ticket-management-app-b8052.appspot.com",
            messagingSenderId: "541558959292",
            appId: "1:541558959292:web:ce4dfd868dc9bb2339f4b9",
            measurementId: "G-5Q1T8E2VST"));
  } else {
    await Firebase.initializeApp();
  }
}
