import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

part 'character_bloc.freezed.dart';

part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final CharacterRepository characterRepository;

  CharacterBloc({required this.characterRepository})
      : super(const CharacterState.loading()) {
    on<_CharacterEventFetch>((event, emit) async {
      emit(const CharacterState.loading());

      try {
        CharacterModel characterLoaded = await characterRepository.getCharacter(
          page: event.page,
          name: event.name,
        );
        emit(CharacterState.loaded(characterLoaded: characterLoaded));
      } catch (_) {
        emit(const CharacterState.error());
      }
    });
  }
}
