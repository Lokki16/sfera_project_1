import 'package:sfera_project_1/presentation/template/template.dart';

FirebaseOptions get firebaseOptionsDefault {
  return const FirebaseOptions(
    apiKey: Constants.apiKey,
    authDomain: Constants.authDomain,
    databaseURL: 'https://react-native-firebase-testing.firebaseio.com',
    projectId: Constants.projectId,
    messagingSenderId: Constants.messagingSenderId,
    appId: Constants.appId,
    measurementId: 'G-F79DJ0VFGS',
  );
}
