import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:sfera_project_1/app.dart';
import 'package:sfera_project_1/presentation/template/template.dart';
import 'package:sfera_project_1/presentation/template/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await DesktopWindow.setMinWindowSize(const Size(1200, 600));
  }

  Firebase.initializeApp(options: firebaseOptionsDefault);
  FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

  runApp(SferaApp());
}
