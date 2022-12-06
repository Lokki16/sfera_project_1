part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  const factory AuthorizationEvent.emailChange({required String email}) =
      _AuthorizationEventEmailChange;

  const factory AuthorizationEvent.passwordChange({required String password}) =
      _AuthorizationEventPasswordChange;
}
