// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$APIResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T body) success,
    required TResult Function(String message) localError,
    required TResult Function(int statusCode) apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T body)? success,
    TResult? Function(String message)? localError,
    TResult? Function(int statusCode)? apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T body)? success,
    TResult Function(String message)? localError,
    TResult Function(int statusCode)? apiError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccessResponse<T> value) success,
    required TResult Function(LocalErrorResponse<T> value) localError,
    required TResult Function(ApiErrorResponse<T> value) apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiSuccessResponse<T> value)? success,
    TResult? Function(LocalErrorResponse<T> value)? localError,
    TResult? Function(ApiErrorResponse<T> value)? apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccessResponse<T> value)? success,
    TResult Function(LocalErrorResponse<T> value)? localError,
    TResult Function(ApiErrorResponse<T> value)? apiError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIResponseCopyWith<T, $Res> {
  factory $APIResponseCopyWith(
          APIResponse<T> value, $Res Function(APIResponse<T>) then) =
      _$APIResponseCopyWithImpl<T, $Res, APIResponse<T>>;
}

/// @nodoc
class _$APIResponseCopyWithImpl<T, $Res, $Val extends APIResponse<T>>
    implements $APIResponseCopyWith<T, $Res> {
  _$APIResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiSuccessResponseCopyWith<T, $Res> {
  factory _$$ApiSuccessResponseCopyWith(_$ApiSuccessResponse<T> value,
          $Res Function(_$ApiSuccessResponse<T>) then) =
      __$$ApiSuccessResponseCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T body});
}

/// @nodoc
class __$$ApiSuccessResponseCopyWithImpl<T, $Res>
    extends _$APIResponseCopyWithImpl<T, $Res, _$ApiSuccessResponse<T>>
    implements _$$ApiSuccessResponseCopyWith<T, $Res> {
  __$$ApiSuccessResponseCopyWithImpl(_$ApiSuccessResponse<T> _value,
      $Res Function(_$ApiSuccessResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_$ApiSuccessResponse<T>(
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ApiSuccessResponse<T> implements ApiSuccessResponse<T> {
  const _$ApiSuccessResponse({required this.body});

  @override
  final T body;

  @override
  String toString() {
    return 'APIResponse<$T>.success(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiSuccessResponse<T> &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiSuccessResponseCopyWith<T, _$ApiSuccessResponse<T>> get copyWith =>
      __$$ApiSuccessResponseCopyWithImpl<T, _$ApiSuccessResponse<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T body) success,
    required TResult Function(String message) localError,
    required TResult Function(int statusCode) apiError,
  }) {
    return success(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T body)? success,
    TResult? Function(String message)? localError,
    TResult? Function(int statusCode)? apiError,
  }) {
    return success?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T body)? success,
    TResult Function(String message)? localError,
    TResult Function(int statusCode)? apiError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccessResponse<T> value) success,
    required TResult Function(LocalErrorResponse<T> value) localError,
    required TResult Function(ApiErrorResponse<T> value) apiError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiSuccessResponse<T> value)? success,
    TResult? Function(LocalErrorResponse<T> value)? localError,
    TResult? Function(ApiErrorResponse<T> value)? apiError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccessResponse<T> value)? success,
    TResult Function(LocalErrorResponse<T> value)? localError,
    TResult Function(ApiErrorResponse<T> value)? apiError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ApiSuccessResponse<T> implements APIResponse<T> {
  const factory ApiSuccessResponse({required final T body}) =
      _$ApiSuccessResponse<T>;

  T get body;
  @JsonKey(ignore: true)
  _$$ApiSuccessResponseCopyWith<T, _$ApiSuccessResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalErrorResponseCopyWith<T, $Res> {
  factory _$$LocalErrorResponseCopyWith(_$LocalErrorResponse<T> value,
          $Res Function(_$LocalErrorResponse<T>) then) =
      __$$LocalErrorResponseCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LocalErrorResponseCopyWithImpl<T, $Res>
    extends _$APIResponseCopyWithImpl<T, $Res, _$LocalErrorResponse<T>>
    implements _$$LocalErrorResponseCopyWith<T, $Res> {
  __$$LocalErrorResponseCopyWithImpl(_$LocalErrorResponse<T> _value,
      $Res Function(_$LocalErrorResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LocalErrorResponse<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalErrorResponse<T> implements LocalErrorResponse<T> {
  const _$LocalErrorResponse({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'APIResponse<$T>.localError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalErrorResponse<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalErrorResponseCopyWith<T, _$LocalErrorResponse<T>> get copyWith =>
      __$$LocalErrorResponseCopyWithImpl<T, _$LocalErrorResponse<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T body) success,
    required TResult Function(String message) localError,
    required TResult Function(int statusCode) apiError,
  }) {
    return localError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T body)? success,
    TResult? Function(String message)? localError,
    TResult? Function(int statusCode)? apiError,
  }) {
    return localError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T body)? success,
    TResult Function(String message)? localError,
    TResult Function(int statusCode)? apiError,
    required TResult orElse(),
  }) {
    if (localError != null) {
      return localError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccessResponse<T> value) success,
    required TResult Function(LocalErrorResponse<T> value) localError,
    required TResult Function(ApiErrorResponse<T> value) apiError,
  }) {
    return localError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiSuccessResponse<T> value)? success,
    TResult? Function(LocalErrorResponse<T> value)? localError,
    TResult? Function(ApiErrorResponse<T> value)? apiError,
  }) {
    return localError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccessResponse<T> value)? success,
    TResult Function(LocalErrorResponse<T> value)? localError,
    TResult Function(ApiErrorResponse<T> value)? apiError,
    required TResult orElse(),
  }) {
    if (localError != null) {
      return localError(this);
    }
    return orElse();
  }
}

abstract class LocalErrorResponse<T> implements APIResponse<T> {
  const factory LocalErrorResponse({required final String message}) =
      _$LocalErrorResponse<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$LocalErrorResponseCopyWith<T, _$LocalErrorResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiErrorResponseCopyWith<T, $Res> {
  factory _$$ApiErrorResponseCopyWith(_$ApiErrorResponse<T> value,
          $Res Function(_$ApiErrorResponse<T>) then) =
      __$$ApiErrorResponseCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int statusCode});
}

/// @nodoc
class __$$ApiErrorResponseCopyWithImpl<T, $Res>
    extends _$APIResponseCopyWithImpl<T, $Res, _$ApiErrorResponse<T>>
    implements _$$ApiErrorResponseCopyWith<T, $Res> {
  __$$ApiErrorResponseCopyWithImpl(
      _$ApiErrorResponse<T> _value, $Res Function(_$ApiErrorResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
  }) {
    return _then(_$ApiErrorResponse<T>(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ApiErrorResponse<T> implements ApiErrorResponse<T> {
  const _$ApiErrorResponse({required this.statusCode});

  @override
  final int statusCode;

  @override
  String toString() {
    return 'APIResponse<$T>.apiError(statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorResponse<T> &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorResponseCopyWith<T, _$ApiErrorResponse<T>> get copyWith =>
      __$$ApiErrorResponseCopyWithImpl<T, _$ApiErrorResponse<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T body) success,
    required TResult Function(String message) localError,
    required TResult Function(int statusCode) apiError,
  }) {
    return apiError(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T body)? success,
    TResult? Function(String message)? localError,
    TResult? Function(int statusCode)? apiError,
  }) {
    return apiError?.call(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T body)? success,
    TResult Function(String message)? localError,
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
    required TResult Function(ApiSuccessResponse<T> value) success,
    required TResult Function(LocalErrorResponse<T> value) localError,
    required TResult Function(ApiErrorResponse<T> value) apiError,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiSuccessResponse<T> value)? success,
    TResult? Function(LocalErrorResponse<T> value)? localError,
    TResult? Function(ApiErrorResponse<T> value)? apiError,
  }) {
    return apiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccessResponse<T> value)? success,
    TResult Function(LocalErrorResponse<T> value)? localError,
    TResult Function(ApiErrorResponse<T> value)? apiError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class ApiErrorResponse<T> implements APIResponse<T> {
  const factory ApiErrorResponse({required final int statusCode}) =
      _$ApiErrorResponse<T>;

  int get statusCode;
  @JsonKey(ignore: true)
  _$$ApiErrorResponseCopyWith<T, _$ApiErrorResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
