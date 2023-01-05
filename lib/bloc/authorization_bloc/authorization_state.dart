part of 'authorization_bloc.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState.loaded(
      {required AuthorizationModel authorization}) = _AuthorizationStateLoaded;
}
