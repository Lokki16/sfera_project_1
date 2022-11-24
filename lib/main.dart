import 'package:firedart/firedart.dart';
import 'package:sfera_project_1/app.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

const apiKey = 'AIzaSyC7mDC2L7WANFAevHi1wuhoI_9fFBCjgnM';

// const firebaseConfig = {
//   apiKey: "AIzaSyC7mDC2L7WANFAevHi1wuhoI_9fFBCjgnM",
//   authDomain: "sferaproject1-9665f.firebaseapp.com",
//   projectId: "sferaproject1-9665f",
//   storageBucket: "sferaproject1-9665f.appspot.com",
//   messagingSenderId: "762680665319",
//   appId: "1:762680665319:web:15ff929727243b3dd9ae42"
// };

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  FirebaseAuth.initialize(apiKey, VolatileStore());

  runApp(SferaApp());
}
