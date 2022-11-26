part of 'authorization_bloc.dart';

class AuthorizationState extends Equatable {
  final String email;
  final String password;

  const AuthorizationState({
    required this.email,
    required this.password,
  });

  AuthorizationState copyWith({
    String? email,
    String? password,
  }) {
    return AuthorizationState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [email, password];
}
