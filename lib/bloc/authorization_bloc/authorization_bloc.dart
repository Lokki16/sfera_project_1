import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc({required AuthorizationRepository authorizationRepository})
      : super(const AuthorizationState(email: '', password: '')) {
    on<EmailChange>(_emailChanged);
    on<PasswordChange>(_passwordChanged);
  }

  void _emailChanged(
    EmailChange event,
    Emitter<AuthorizationState> emit,
  ) {
    emit(state.copyWith(email: event.email));
  }

  void _passwordChanged(
    PasswordChange event,
    Emitter<AuthorizationState> emit,
  ) {
    emit(state.copyWith(password: event.password));
  }
}
