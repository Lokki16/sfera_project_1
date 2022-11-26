import 'dart:async';
import 'package:firedart/firedart.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

enum AuthorizationStatus { unknown, authenticated, unauthenticated }

class AuthorizationRepository {
  final _firebaseAuth = FirebaseAuth.instance;
  final _controller = StreamController<AuthorizationStatus>();

  Stream<AuthorizationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthorizationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future signInState() async => _firebaseAuth.isSignedIn;

  Future currentUser() async => await _firebaseAuth.getUser();

  Future signIn(String email, String password) async {
    try {
      await _firebaseAuth.signIn(email, password);
      _controller.add(AuthorizationStatus.authenticated);
      return await _firebaseAuth.getUser();
    } catch (e) {
      logger(e.toString());
    }
  }

  Future signUp(String email, String password) async {
    try {
      await _firebaseAuth.signUp(email, password);
      _controller.add(AuthorizationStatus.unauthenticated);
      return await _firebaseAuth.getUser();
    } catch (e) {
      logger(e.toString());
    }
  }

  Future signOut() async => _firebaseAuth.signOut();

  void dispose() => _controller.close();
}
