part of 'authorization_bloc.dart';

class AuthorizationState extends Equatable {
  final String email;
  final String password;
  final FormzStatus status;

  const AuthorizationState({
    required this.email,
    required this.password,
    this.status = FormzStatus.pure,
  });

  AuthorizationState copyWith({
    String? email,
    String? password,
    FormzStatus? status,
  }) {
    return AuthorizationState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [email, password];
}
