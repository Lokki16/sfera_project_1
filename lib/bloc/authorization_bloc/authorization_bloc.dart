import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc({required AuthorizationRepository authorizationRepository})
      : super(const AuthorizationState(email: '', password: '')) {
    on<AuthorizationEmailChanged>(_authorizationEmailChanged);
    on<AuthorizationPasswordChanged>(_authorizationPasswordChanged);
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
}
