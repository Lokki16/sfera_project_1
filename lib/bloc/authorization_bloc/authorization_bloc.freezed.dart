// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthorizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationEventEmailChange value) emailChange,
    required TResult Function(_AuthorizationEventPasswordChange value)
        passwordChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationEventEmailChange value)? emailChange,
    TResult? Function(_AuthorizationEventPasswordChange value)? passwordChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationEventEmailChange value)? emailChange,
    TResult Function(_AuthorizationEventPasswordChange value)? passwordChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventCopyWith<$Res> {
  factory $AuthorizationEventCopyWith(
          AuthorizationEvent value, $Res Function(AuthorizationEvent) then) =
      _$AuthorizationEventCopyWithImpl<$Res, AuthorizationEvent>;
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res, $Val extends AuthorizationEvent>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthorizationEventEmailChangeCopyWith<$Res> {
  factory _$$_AuthorizationEventEmailChangeCopyWith(
          _$_AuthorizationEventEmailChange value,
          $Res Function(_$_AuthorizationEventEmailChange) then) =
      __$$_AuthorizationEventEmailChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_AuthorizationEventEmailChangeCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res,
        _$_AuthorizationEventEmailChange>
    implements _$$_AuthorizationEventEmailChangeCopyWith<$Res> {
  __$$_AuthorizationEventEmailChangeCopyWithImpl(
      _$_AuthorizationEventEmailChange _value,
      $Res Function(_$_AuthorizationEventEmailChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_AuthorizationEventEmailChange(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthorizationEventEmailChange
    implements _AuthorizationEventEmailChange {
  const _$_AuthorizationEventEmailChange({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthorizationEvent.emailChange(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizationEventEmailChange &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorizationEventEmailChangeCopyWith<_$_AuthorizationEventEmailChange>
      get copyWith => __$$_AuthorizationEventEmailChangeCopyWithImpl<
          _$_AuthorizationEventEmailChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
  }) {
    return emailChange(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
  }) {
    return emailChange?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    required TResult orElse(),
  }) {
    if (emailChange != null) {
      return emailChange(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationEventEmailChange value) emailChange,
    required TResult Function(_AuthorizationEventPasswordChange value)
        passwordChange,
  }) {
    return emailChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationEventEmailChange value)? emailChange,
    TResult? Function(_AuthorizationEventPasswordChange value)? passwordChange,
  }) {
    return emailChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationEventEmailChange value)? emailChange,
    TResult Function(_AuthorizationEventPasswordChange value)? passwordChange,
    required TResult orElse(),
  }) {
    if (emailChange != null) {
      return emailChange(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationEventEmailChange implements AuthorizationEvent {
  const factory _AuthorizationEventEmailChange({required final String email}) =
      _$_AuthorizationEventEmailChange;

  String get email;
  @JsonKey(ignore: true)
  _$$_AuthorizationEventEmailChangeCopyWith<_$_AuthorizationEventEmailChange>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthorizationEventPasswordChangeCopyWith<$Res> {
  factory _$$_AuthorizationEventPasswordChangeCopyWith(
          _$_AuthorizationEventPasswordChange value,
          $Res Function(_$_AuthorizationEventPasswordChange) then) =
      __$$_AuthorizationEventPasswordChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_AuthorizationEventPasswordChangeCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res,
        _$_AuthorizationEventPasswordChange>
    implements _$$_AuthorizationEventPasswordChangeCopyWith<$Res> {
  __$$_AuthorizationEventPasswordChangeCopyWithImpl(
      _$_AuthorizationEventPasswordChange _value,
      $Res Function(_$_AuthorizationEventPasswordChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_AuthorizationEventPasswordChange(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthorizationEventPasswordChange
    implements _AuthorizationEventPasswordChange {
  const _$_AuthorizationEventPasswordChange({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'AuthorizationEvent.passwordChange(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizationEventPasswordChange &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorizationEventPasswordChangeCopyWith<
          _$_AuthorizationEventPasswordChange>
      get copyWith => __$$_AuthorizationEventPasswordChangeCopyWithImpl<
          _$_AuthorizationEventPasswordChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
  }) {
    return passwordChange(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
  }) {
    return passwordChange?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    required TResult orElse(),
  }) {
    if (passwordChange != null) {
      return passwordChange(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationEventEmailChange value) emailChange,
    required TResult Function(_AuthorizationEventPasswordChange value)
        passwordChange,
  }) {
    return passwordChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationEventEmailChange value)? emailChange,
    TResult? Function(_AuthorizationEventPasswordChange value)? passwordChange,
  }) {
    return passwordChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationEventEmailChange value)? emailChange,
    TResult Function(_AuthorizationEventPasswordChange value)? passwordChange,
    required TResult orElse(),
  }) {
    if (passwordChange != null) {
      return passwordChange(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationEventPasswordChange implements AuthorizationEvent {
  const factory _AuthorizationEventPasswordChange(
      {required final String password}) = _$_AuthorizationEventPasswordChange;

  String get password;
  @JsonKey(ignore: true)
  _$$_AuthorizationEventPasswordChangeCopyWith<
          _$_AuthorizationEventPasswordChange>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthorizationState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorizationStateCopyWith<AuthorizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res, AuthorizationState>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res, $Val extends AuthorizationState>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorizationStateLoadedCopyWith<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  factory _$$_AuthorizationStateLoadedCopyWith(
          _$_AuthorizationStateLoaded value,
          $Res Function(_$_AuthorizationStateLoaded) then) =
      __$$_AuthorizationStateLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthorizationStateLoadedCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$_AuthorizationStateLoaded>
    implements _$$_AuthorizationStateLoadedCopyWith<$Res> {
  __$$_AuthorizationStateLoadedCopyWithImpl(_$_AuthorizationStateLoaded _value,
      $Res Function(_$_AuthorizationStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_AuthorizationStateLoaded(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthorizationStateLoaded implements _AuthorizationStateLoaded {
  const _$_AuthorizationStateLoaded(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthorizationState.loaded(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizationStateLoaded &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorizationStateLoadedCopyWith<_$_AuthorizationStateLoaded>
      get copyWith => __$$_AuthorizationStateLoadedCopyWithImpl<
          _$_AuthorizationStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loaded,
  }) {
    return loaded(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loaded,
  }) {
    return loaded?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationStateLoaded implements AuthorizationState {
  const factory _AuthorizationStateLoaded(
      {required final String email,
      required final String password}) = _$_AuthorizationStateLoaded;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorizationStateLoadedCopyWith<_$_AuthorizationStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}
