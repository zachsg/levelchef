import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/auth.dart';
import '../profile/profile_controller.dart';
import 'auth_model.dart';

final authProvider = StateNotifierProvider<AuthController, AuthModel>(
    (ref) => AuthController(ref: ref));

class AuthController extends StateNotifier<AuthModel> {
  AuthController({required this.ref}) : super(const AuthModel());

  final Ref ref;

  void setEmail(String email) => state = state.copyWith(email: email);

  void setPassword(String password) =>
      state = state.copyWith(password: password);

  void setConfirmPassword(String password) =>
      state = state.copyWith(confirmPassword: password);

  void setLoading(bool isLoading) =>
      state = state.copyWith(isLoading: isLoading);

  void setRegistering(bool isRegistering) =>
      state = state.copyWith(isRegistering: isRegistering);

  Future<void> register() async {
    state = state.copyWith(isLoading: true);

    try {
      await Auth.instance.createUserWithEmailAndPassword(
        email: state.email,
        password: state.password,
      );

      ref.read(profileProvider.notifier).setEmail(state.email);
      await ref.read(profileProvider.notifier).create();
    } catch (e) {
      // TODO: Handle failed to create user
    }

    state = state.copyWith(isLoading: false);
  }

  Future<void> signIn() async {
    state = state.copyWith(isLoading: true);

    await Auth.instance.signInWithEmailAndPassword(
      email: state.email,
      password: state.password,
    );

    state = state.copyWith(isLoading: false);
  }
}
