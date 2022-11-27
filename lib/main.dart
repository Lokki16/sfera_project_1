import 'dart:io';

import 'package:firedart/firedart.dart';
import 'package:flutter/foundation.dart';

import 'package:sfera_project_1/app.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await DesktopWindow.setMinWindowSize(const Size(900, 600));
  }

  FirebaseAuth.initialize(Constants.apiKey, VolatileStore());

  runApp(SferaApp());
}
