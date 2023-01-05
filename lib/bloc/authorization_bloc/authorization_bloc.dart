import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

part 'authorization_bloc.freezed.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc()
      : super(const AuthorizationState.loaded(email: '', password: '')) {
    on<_AuthorizationEventEmailChange>(_emailChanged);
    on<_AuthorizationEventPasswordChange>(_passwordChanged);
  }

  void _emailChanged(
    _AuthorizationEventEmailChange event,
    Emitter<AuthorizationState> emit,
  ) {
    emit(state.copyWith(email: event.email));
  }

  void _passwordChanged(
    _AuthorizationEventPasswordChange event,
    Emitter<AuthorizationState> emit,
  ) {
    emit(state.copyWith(password: event.password));
  }
}
