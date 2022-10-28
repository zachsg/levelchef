import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  static FirebaseAuth instance = FirebaseAuth.instance;

  static Stream<User?> authStateChanges() {
    return instance.authStateChanges();
  }
}
