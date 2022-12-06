part of 'character_bloc.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.loading() = _CharacterStateLoading;

  const factory CharacterState.loaded(
      {required CharacterModel characterLoaded}) = _CharacterStateLoaded;

  const factory CharacterState.error() = _CharacterStateError;
}
