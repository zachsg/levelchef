import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    @Default(false) bool isLoading,
    @Default(true) bool isRegistering,
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
  }) = _AuthModel;
}
