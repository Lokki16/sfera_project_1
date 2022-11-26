import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  final AuthorizationRepository _authorizationRepository;

  AuthorizationBloc({required AuthorizationRepository authorizationRepository})
      : _authorizationRepository = authorizationRepository,
        super(const AuthorizationState(email: '', password: '')) {
    on<AuthorizationEmailChanged>(_authorizationEmailChanged);
    on<AuthorizationPasswordChanged>(_authorizationPasswordChanged);
    on<AuthorizationSubmitted>(_onSubmitted);
  }

  void _authorizationEmailChanged(
    AuthorizationEmailChanged event,
    Emitter<AuthorizationState> emit,
  ) {
    emit(state.copyWith(email: event.email));
  }

  void _authorizationPasswordChanged(
    AuthorizationPasswordChanged event,
    Emitter<AuthorizationState> emit,
  ) {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _onSubmitted(
    AuthorizationSubmitted event,
    Emitter<AuthorizationState> emit,
  ) async {
    if (state.status.isValidated) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        await _authorizationRepository.signIn(state.email, state.password);
        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      } catch (_) {
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }
    }
  }
}
