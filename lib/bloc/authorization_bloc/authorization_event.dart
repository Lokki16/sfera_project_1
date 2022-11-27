part of 'authorization_bloc.dart';

@immutable
abstract class AuthorizationEvent extends Equatable {
  const AuthorizationEvent();

  @override
  List<Object> get props => [];
}

class EmailChange extends AuthorizationEvent {
  final String email;

  const EmailChange(this.email);

  @override
  List<Object> get props => [email];
}

class PasswordChange extends AuthorizationEvent {
  final String password;

  const PasswordChange(this.password);

  @override
  List<Object> get props => [password];
}
