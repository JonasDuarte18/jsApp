import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBHd7CIjEBJ_ewJhM5PPzbIm5Xb7x5IPRw",
            authDomain: "js-manutencao.firebaseapp.com",
            projectId: "js-manutencao",
            storageBucket: "js-manutencao.appspot.com",
            messagingSenderId: "969762260473",
            appId: "1:969762260473:web:368f1a1a4aab905f50a928"));
  } else {
    await Firebase.initializeApp();
  }
}
