part of 'authorization_bloc.dart';

@immutable
abstract class AuthorizationEvent extends Equatable {
  const AuthorizationEvent();

  @override
  List<Object> get props => [];
}

class AuthorizationEmailChanged extends AuthorizationEvent {
  final String email;

  const AuthorizationEmailChanged(this.email);

  @override
  List<Object> get props => [email];
}

class AuthorizationPasswordChanged extends AuthorizationEvent {
  final String password;

  const AuthorizationPasswordChanged(this.password);

  @override
  List<Object> get props => [password];
}
