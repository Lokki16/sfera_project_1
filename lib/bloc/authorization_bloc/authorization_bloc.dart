import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc({required AuthorizationRepository authenticationRepository})
      : super(const AuthorizationState()) {
    on<AuthorizationEmailChanged>(_onEmailChanged);
    on<AuthorizationPasswordChanged>(_onPasswordChanged);
  }

  void _onEmailChanged(
    AuthorizationEmailChanged event,
    Emitter<AuthorizationState> emit,
  ) {
    final email = EmailModel.dirty(event.email);
    emit(
      state.copyWith(email: email),
    );
  }

  void _onPasswordChanged(
    AuthorizationPasswordChanged event,
    Emitter<AuthorizationState> emit,
  ) {
    final password = PasswordModel.dirty(event.password);
    emit(
      state.copyWith(password: password),
    );
  }
}
