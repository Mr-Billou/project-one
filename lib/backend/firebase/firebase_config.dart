import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCJFe6SB3yXMd_AVWQdT2cbsftA_Icfepg",
            authDomain: "pfe2-52690.firebaseapp.com",
            projectId: "pfe2-52690",
            storageBucket: "pfe2-52690.appspot.com",
            messagingSenderId: "985515790866",
            appId: "1:985515790866:web:450e862583a7dfdeff7ecb"));
  } else {
    await Firebase.initializeApp();
  }
}
