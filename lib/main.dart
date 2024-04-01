import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  //Widgets Binding
  // final WidgetsBinding widgetsBinding =
  //     WidgetsFlutterBinding.ensureInitialized();

  //Todo: --Getx Local Storage
  await GetStorage.init();

  //Todo: Await Native Splash
  //Todo: Initialize Firebase
  //Todo: Initialize Authentication

  ///Initialize Firebase & Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // then((FirebaseApp value) => Get.put(AuthenticationRepository()))

  runApp(const App());
}
