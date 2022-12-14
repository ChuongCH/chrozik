import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../bootstrap.dart';
import '../config/flavors.dart';
import '../firebase/firebase_options_dev.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Flavor.currentFlavor = Flavor.development;

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  bootstrap();
}
