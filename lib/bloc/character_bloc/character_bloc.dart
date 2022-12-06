import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

part 'character_bloc.freezed.dart';

part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterRepository characterRepository;

  CharacterBloc({required this.characterRepository})
      : super(const CharacterState.loading()) {
    on<_CharacterEventFetch>(_characterEventFetch);
  }

  void _characterEventFetch(
    _CharacterEventFetch event,
    Emitter<CharacterState> emit,
  ) async {
    emit(const CharacterState.loading());

    try {
      CharacterModel characterLoaded =
          await characterRepository.getCharacter(event.name, event.page);
      emit(CharacterState.loaded(characterLoaded: characterLoaded));
    } catch (_) {
      emit(const CharacterState.error());
    }
  }
}
