import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // continuous stream
  static final userStream = FirebaseAuth.instance.authStateChanges();

  // instance access
  static User? getCurrentUser() {
    return FirebaseAuth.instance.currentUser;
  }

  static Future<UserCredential> anonLogin() {
    return FirebaseAuth.instance.signInAnonymously();
  }

  static Future<void> signOut() {
    return FirebaseAuth.instance.signOut();
  }
}
