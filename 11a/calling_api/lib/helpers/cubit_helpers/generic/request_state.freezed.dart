// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(T body) requested,
    required TResult Function() refreshing,
    required TResult Function(String errorMessage) localError,
    required TResult Function(int statusCode) apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(T body)? requested,
    TResult? Function()? refreshing,
    TResult? Function(String errorMessage)? localError,
    TResult? Function(int statusCode)? apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(T body)? requested,
    TResult Function()? refreshing,
    TResult Function(String errorMessage)? localError,
    TResult Function(int statusCode)? apiError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInitial<T> value) initial,
    required TResult Function(Requesting<T> value) requesting,
    required TResult Function(Requested<T> value) requested,
    required TResult Function(Refreshing<T> value) refreshing,
    required TResult Function(LocalErrorRequesting<T> value) localError,
    required TResult Function(ApiErrorRequesting<T> value) apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitial<T> value)? initial,
    TResult? Function(Requesting<T> value)? requesting,
    TResult? Function(Requested<T> value)? requested,
    TResult? Function(Refreshing<T> value)? refreshing,
    TResult? Function(LocalErrorRequesting<T> value)? localError,
    TResult? Function(ApiErrorRequesting<T> value)? apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitial<T> value)? initial,
    TResult Function(Requesting<T> value)? requesting,
    TResult Function(Requested<T> value)? requested,
    TResult Function(Refreshing<T> value)? refreshing,
    TResult Function(LocalErrorRequesting<T> value)? localError,
    TResult Function(ApiErrorRequesting<T> value)? apiError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateCopyWith<T, $Res> {
  factory $RequestStateCopyWith(
          RequestState<T> value, $Res Function(RequestState<T>) then) =
      _$RequestStateCopyWithImpl<T, $Res, RequestState<T>>;
}

/// @nodoc
class _$RequestStateCopyWithImpl<T, $Res, $Val extends RequestState<T>>
    implements $RequestStateCopyWith<T, $Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestInitialCopyWith<T, $Res> {
  factory _$$RequestInitialCopyWith(
          _$RequestInitial<T> value, $Res Function(_$RequestInitial<T>) then) =
      __$$RequestInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RequestInitialCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$RequestInitial<T>>
    implements _$$RequestInitialCopyWith<T, $Res> {
  __$$RequestInitialCopyWithImpl(
      _$RequestInitial<T> _value, $Res Function(_$RequestInitial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestInitial<T> implements RequestInitial<T> {
  const _$RequestInitial();

  @override
  String toString() {
    return 'RequestState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(T body) requested,
    required TResult Function() refreshing,
    required TResult Function(String errorMessage) localError,
    required TResult Function(int statusCode) apiError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(T body)? requested,
    TResult? Function()? refreshing,
    TResult? Function(String errorMessage)? localError,
    TResult? Function(int statusCode)? apiError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(T body)? requested,
    TResult Function()? refreshing,
    TResult Function(String errorMessage)? localError,
    TResult Function(int statusCode)? apiError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInitial<T> value) initial,
    required TResult Function(Requesting<T> value) requesting,
    required TResult Function(Requested<T> value) requested,
    required TResult Function(Refreshing<T> value) refreshing,
    required TResult Function(LocalErrorRequesting<T> value) localError,
    required TResult Function(ApiErrorRequesting<T> value) apiError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitial<T> value)? initial,
    TResult? Function(Requesting<T> value)? requesting,
    TResult? Function(Requested<T> value)? requested,
    TResult? Function(Refreshing<T> value)? refreshing,
    TResult? Function(LocalErrorRequesting<T> value)? localError,
    TResult? Function(ApiErrorRequesting<T> value)? apiError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitial<T> value)? initial,
    TResult Function(Requesting<T> value)? requesting,
    TResult Function(Requested<T> value)? requested,
    TResult Function(Refreshing<T> value)? refreshing,
    TResult Function(LocalErrorRequesting<T> value)? localError,
    TResult Function(ApiErrorRequesting<T> value)? apiError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RequestInitial<T> implements RequestState<T> {
  const factory RequestInitial() = _$RequestInitial<T>;
}

/// @nodoc
abstract class _$$RequestingCopyWith<T, $Res> {
  factory _$$RequestingCopyWith(
          _$Requesting<T> value, $Res Function(_$Requesting<T>) then) =
      __$$RequestingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RequestingCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$Requesting<T>>
    implements _$$RequestingCopyWith<T, $Res> {
  __$$RequestingCopyWithImpl(
      _$Requesting<T> _value, $Res Function(_$Requesting<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Requesting<T> implements Requesting<T> {
  const _$Requesting();

  @override
  String toString() {
    return 'RequestState<$T>.requesting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Requesting<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(T body) requested,
    required TResult Function() refreshing,
    required TResult Function(String errorMessage) localError,
    required TResult Function(int statusCode) apiError,
  }) {
    return requesting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(T body)? requested,
    TResult? Function()? refreshing,
    TResult? Function(String errorMessage)? localError,
    TResult? Function(int statusCode)? apiError,
  }) {
    return requesting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(T body)? requested,
    TResult Function()? refreshing,
    TResult Function(String errorMessage)? localError,
    TResult Function(int statusCode)? apiError,
    required TResult orElse(),
  }) {
    if (requesting != null) {
      return requesting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInitial<T> value) initial,
    required TResult Function(Requesting<T> value) requesting,
    required TResult Function(Requested<T> value) requested,
    required TResult Function(Refreshing<T> value) refreshing,
    required TResult Function(LocalErrorRequesting<T> value) localError,
    required TResult Function(ApiErrorRequesting<T> value) apiError,
  }) {
    return requesting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitial<T> value)? initial,
    TResult? Function(Requesting<T> value)? requesting,
    TResult? Function(Requested<T> value)? requested,
    TResult? Function(Refreshing<T> value)? refreshing,
    TResult? Function(LocalErrorRequesting<T> value)? localError,
    TResult? Function(ApiErrorRequesting<T> value)? apiError,
  }) {
    return requesting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitial<T> value)? initial,
    TResult Function(Requesting<T> value)? requesting,
    TResult Function(Requested<T> value)? requested,
    TResult Function(Refreshing<T> value)? refreshing,
    TResult Function(LocalErrorRequesting<T> value)? localError,
    TResult Function(ApiErrorRequesting<T> value)? apiError,
    required TResult orElse(),
  }) {
    if (requesting != null) {
      return requesting(this);
    }
    return orElse();
  }
}

abstract class Requesting<T> implements RequestState<T> {
  const factory Requesting() = _$Requesting<T>;
}

/// @nodoc
abstract class _$$RequestedCopyWith<T, $Res> {
  factory _$$RequestedCopyWith(
          _$Requested<T> value, $Res Function(_$Requested<T>) then) =
      __$$RequestedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T body});
}

/// @nodoc
class __$$RequestedCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$Requested<T>>
    implements _$$RequestedCopyWith<T, $Res> {
  __$$RequestedCopyWithImpl(
      _$Requested<T> _value, $Res Function(_$Requested<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_$Requested<T>(
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Requested<T> implements Requested<T> {
  const _$Requested({required this.body});

  @override
  final T body;

  @override
  String toString() {
    return 'RequestState<$T>.requested(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Requested<T> &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestedCopyWith<T, _$Requested<T>> get copyWith =>
      __$$RequestedCopyWithImpl<T, _$Requested<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(T body) requested,
    required TResult Function() refreshing,
    required TResult Function(String errorMessage) localError,
    required TResult Function(int statusCode) apiError,
  }) {
    return requested(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(T body)? requested,
    TResult? Function()? refreshing,
    TResult? Function(String errorMessage)? localError,
    TResult? Function(int statusCode)? apiError,
  }) {
    return requested?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(T body)? requested,
    TResult Function()? refreshing,
    TResult Function(String errorMessage)? localError,
    TResult Function(int statusCode)? apiError,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInitial<T> value) initial,
    required TResult Function(Requesting<T> value) requesting,
    required TResult Function(Requested<T> value) requested,
    required TResult Function(Refreshing<T> value) refreshing,
    required TResult Function(LocalErrorRequesting<T> value) localError,
    required TResult Function(ApiErrorRequesting<T> value) apiError,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitial<T> value)? initial,
    TResult? Function(Requesting<T> value)? requesting,
    TResult? Function(Requested<T> value)? requested,
    TResult? Function(Refreshing<T> value)? refreshing,
    TResult? Function(LocalErrorRequesting<T> value)? localError,
    TResult? Function(ApiErrorRequesting<T> value)? apiError,
  }) {
    return requested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitial<T> value)? initial,
    TResult Function(Requesting<T> value)? requesting,
    TResult Function(Requested<T> value)? requested,
    TResult Function(Refreshing<T> value)? refreshing,
    TResult Function(LocalErrorRequesting<T> value)? localError,
    TResult Function(ApiErrorRequesting<T> value)? apiError,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class Requested<T> implements RequestState<T> {
  const factory Requested({required final T body}) = _$Requested<T>;

  T get body;
  @JsonKey(ignore: true)
  _$$RequestedCopyWith<T, _$Requested<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshingCopyWith<T, $Res> {
  factory _$$RefreshingCopyWith(
          _$Refreshing<T> value, $Res Function(_$Refreshing<T>) then) =
      __$$RefreshingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RefreshingCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$Refreshing<T>>
    implements _$$RefreshingCopyWith<T, $Res> {
  __$$RefreshingCopyWithImpl(
      _$Refreshing<T> _value, $Res Function(_$Refreshing<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Refreshing<T> implements Refreshing<T> {
  const _$Refreshing();

  @override
  String toString() {
    return 'RequestState<$T>.refreshing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Refreshing<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(T body) requested,
    required TResult Function() refreshing,
    required TResult Function(String errorMessage) localError,
    required TResult Function(int statusCode) apiError,
  }) {
    return refreshing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(T body)? requested,
    TResult? Function()? refreshing,
    TResult? Function(String errorMessage)? localError,
    TResult? Function(int statusCode)? apiError,
  }) {
    return refreshing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(T body)? requested,
    TResult Function()? refreshing,
    TResult Function(String errorMessage)? localError,
    TResult Function(int statusCode)? apiError,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInitial<T> value) initial,
    required TResult Function(Requesting<T> value) requesting,
    required TResult Function(Requested<T> value) requested,
    required TResult Function(Refreshing<T> value) refreshing,
    required TResult Function(LocalErrorRequesting<T> value) localError,
    required TResult Function(ApiErrorRequesting<T> value) apiError,
  }) {
    return refreshing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitial<T> value)? initial,
    TResult? Function(Requesting<T> value)? requesting,
    TResult? Function(Requested<T> value)? requested,
    TResult? Function(Refreshing<T> value)? refreshing,
    TResult? Function(LocalErrorRequesting<T> value)? localError,
    TResult? Function(ApiErrorRequesting<T> value)? apiError,
  }) {
    return refreshing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitial<T> value)? initial,
    TResult Function(Requesting<T> value)? requesting,
    TResult Function(Requested<T> value)? requested,
    TResult Function(Refreshing<T> value)? refreshing,
    TResult Function(LocalErrorRequesting<T> value)? localError,
    TResult Function(ApiErrorRequesting<T> value)? apiError,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing(this);
    }
    return orElse();
  }
}

abstract class Refreshing<T> implements RequestState<T> {
  const factory Refreshing() = _$Refreshing<T>;
}

/// @nodoc
abstract class _$$LocalErrorRequestingCopyWith<T, $Res> {
  factory _$$LocalErrorRequestingCopyWith(_$LocalErrorRequesting<T> value,
          $Res Function(_$LocalErrorRequesting<T>) then) =
      __$$LocalErrorRequestingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$LocalErrorRequestingCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$LocalErrorRequesting<T>>
    implements _$$LocalErrorRequestingCopyWith<T, $Res> {
  __$$LocalErrorRequestingCopyWithImpl(_$LocalErrorRequesting<T> _value,
      $Res Function(_$LocalErrorRequesting<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$LocalErrorRequesting<T>(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalErrorRequesting<T> implements LocalErrorRequesting<T> {
  const _$LocalErrorRequesting({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'RequestState<$T>.localError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalErrorRequesting<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalErrorRequestingCopyWith<T, _$LocalErrorRequesting<T>> get copyWith =>
      __$$LocalErrorRequestingCopyWithImpl<T, _$LocalErrorRequesting<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(T body) requested,
    required TResult Function() refreshing,
    required TResult Function(String errorMessage) localError,
    required TResult Function(int statusCode) apiError,
  }) {
    return localError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(T body)? requested,
    TResult? Function()? refreshing,
    TResult? Function(String errorMessage)? localError,
    TResult? Function(int statusCode)? apiError,
  }) {
    return localError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(T body)? requested,
    TResult Function()? refreshing,
    TResult Function(String errorMessage)? localError,
    TResult Function(int statusCode)? apiError,
    required TResult orElse(),
  }) {
    if (localError != null) {
      return localError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInitial<T> value) initial,
    required TResult Function(Requesting<T> value) requesting,
    required TResult Function(Requested<T> value) requested,
    required TResult Function(Refreshing<T> value) refreshing,
    required TResult Function(LocalErrorRequesting<T> value) localError,
    required TResult Function(ApiErrorRequesting<T> value) apiError,
  }) {
    return localError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitial<T> value)? initial,
    TResult? Function(Requesting<T> value)? requesting,
    TResult? Function(Requested<T> value)? requested,
    TResult? Function(Refreshing<T> value)? refreshing,
    TResult? Function(LocalErrorRequesting<T> value)? localError,
    TResult? Function(ApiErrorRequesting<T> value)? apiError,
  }) {
    return localError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitial<T> value)? initial,
    TResult Function(Requesting<T> value)? requesting,
    TResult Function(Requested<T> value)? requested,
    TResult Function(Refreshing<T> value)? refreshing,
    TResult Function(LocalErrorRequesting<T> value)? localError,
    TResult Function(ApiErrorRequesting<T> value)? apiError,
    required TResult orElse(),
  }) {
    if (localError != null) {
      return localError(this);
    }
    return orElse();
  }
}

abstract class LocalErrorRequesting<T> implements RequestState<T> {
  const factory LocalErrorRequesting({required final String errorMessage}) =
      _$LocalErrorRequesting<T>;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$LocalErrorRequestingCopyWith<T, _$LocalErrorRequesting<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiErrorRequestingCopyWith<T, $Res> {
  factory _$$ApiErrorRequestingCopyWith(_$ApiErrorRequesting<T> value,
          $Res Function(_$ApiErrorRequesting<T>) then) =
      __$$ApiErrorRequestingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int statusCode});
}

/// @nodoc
class __$$ApiErrorRequestingCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$ApiErrorRequesting<T>>
    implements _$$ApiErrorRequestingCopyWith<T, $Res> {
  __$$ApiErrorRequestingCopyWithImpl(_$ApiErrorRequesting<T> _value,
      $Res Function(_$ApiErrorRequesting<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
  }) {
    return _then(_$ApiErrorRequesting<T>(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ApiErrorRequesting<T> implements ApiErrorRequesting<T> {
  const _$ApiErrorRequesting({required this.statusCode});

  @override
  final int statusCode;

  @override
  String toString() {
    return 'RequestState<$T>.apiError(statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorRequesting<T> &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorRequestingCopyWith<T, _$ApiErrorRequesting<T>> get copyWith =>
      __$$ApiErrorRequestingCopyWithImpl<T, _$ApiErrorRequesting<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(T body) requested,
    required TResult Function() refreshing,
    required TResult Function(String errorMessage) localError,
    required TResult Function(int statusCode) apiError,
  }) {
    return apiError(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(T body)? requested,
    TResult? Function()? refreshing,
    TResult? Function(String errorMessage)? localError,
    TResult? Function(int statusCode)? apiError,
  }) {
    return apiError?.call(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(T body)? requested,
    TResult Function()? refreshing,
    TResult Function(String errorMessage)? localError,
    TResult Function(int statusCode)? apiError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInitial<T> value) initial,
    required TResult Function(Requesting<T> value) requesting,
    required TResult Function(Requested<T> value) requested,
    required TResult Function(Refreshing<T> value) refreshing,
    required TResult Function(LocalErrorRequesting<T> value) localError,
    required TResult Function(ApiErrorRequesting<T> value) apiError,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitial<T> value)? initial,
    TResult? Function(Requesting<T> value)? requesting,
    TResult? Function(Requested<T> value)? requested,
    TResult? Function(Refreshing<T> value)? refreshing,
    TResult? Function(LocalErrorRequesting<T> value)? localError,
    TResult? Function(ApiErrorRequesting<T> value)? apiError,
  }) {
    return apiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitial<T> value)? initial,
    TResult Function(Requesting<T> value)? requesting,
    TResult Function(Requested<T> value)? requested,
    TResult Function(Refreshing<T> value)? refreshing,
    TResult Function(LocalErrorRequesting<T> value)? localError,
    TResult Function(ApiErrorRequesting<T> value)? apiError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class ApiErrorRequesting<T> implements RequestState<T> {
  const factory ApiErrorRequesting({required final int statusCode}) =
      _$ApiErrorRequesting<T>;

  int get statusCode;
  @JsonKey(ignore: true)
  _$$ApiErrorRequestingCopyWith<T, _$ApiErrorRequesting<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
