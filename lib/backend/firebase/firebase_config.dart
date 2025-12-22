import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCfTNxDUawYsWGc1O9SLogmb9ZMYnrBBzg",
            authDomain: "uniquest-3fd74.firebaseapp.com",
            projectId: "uniquest-3fd74",
            storageBucket: "uniquest-3fd74.firebasestorage.app",
            messagingSenderId: "314817439652",
            appId: "1:314817439652:web:0c32ad6e8a83ad6be3c331"));
  } else {
    await Firebase.initializeApp();
  }
}
