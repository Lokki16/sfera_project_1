part of 'authorization_bloc.dart';

class AuthorizationState extends Equatable {
  final EmailModel email;
  final PasswordModel password;

  const AuthorizationState({
    this.email = const EmailModel.pure(),
    this.password = const PasswordModel.pure(),
  });

  AuthorizationState copyWith({
    EmailModel? email,
    PasswordModel? password,
  }) {
    return AuthorizationState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [email, password];
}
