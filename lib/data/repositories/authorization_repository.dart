import 'dart:async';
import 'package:firedart/firedart.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

enum AuthorizationStatus { unknown, authenticated, unauthenticated }

class AuthorizationRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future signInState() async => _firebaseAuth.isSignedIn;

  Future currentUser() async => await _firebaseAuth.getUser();

  Future signIn(String email, String pass) async {
    try {
      await _firebaseAuth.signIn(email, pass);
      var user = await _firebaseAuth.getUser();
      return user;
    } catch (e) {
      logger(e.toString());
    }
  }

  Future signUp(String email, String pass) async {
    try {
      await _firebaseAuth.signUp(email, pass);
      var user = await _firebaseAuth.getUser();
      return user;
    } catch (e) {
      logger(Exception(e.toString()));
    }
  }

  Future signOut() async => _firebaseAuth.signOut();
}
