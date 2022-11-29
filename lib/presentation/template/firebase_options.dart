import 'package:sfera_project_1/presentation/template/template.dart';

FirebaseOptions get firebaseOptionsDefault {
  return const FirebaseOptions(
    apiKey: Constants.apiKey,
    authDomain: Constants.authDomain,
    projectId: Constants.projectId,
    storageBucket: Constants.storageBucket,
    messagingSenderId: Constants.messagingSenderId,
    appId: Constants.appId,
  );
}
