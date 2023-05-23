// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostsPostRequestBody _$PostsPostRequestBodyFromJson(Map<String, dynamic> json) {
  return _PostsPostRequestBody.fromJson(json);
}

/// @nodoc
mixin _$PostsPostRequestBody {
  int get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsPostRequestBodyCopyWith<PostsPostRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsPostRequestBodyCopyWith<$Res> {
  factory $PostsPostRequestBodyCopyWith(PostsPostRequestBody value,
          $Res Function(PostsPostRequestBody) then) =
      _$PostsPostRequestBodyCopyWithImpl<$Res, PostsPostRequestBody>;
  @useResult
  $Res call({int userId, String title, String body});
}

/// @nodoc
class _$PostsPostRequestBodyCopyWithImpl<$Res,
        $Val extends PostsPostRequestBody>
    implements $PostsPostRequestBodyCopyWith<$Res> {
  _$PostsPostRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostsPostRequestBodyCopyWith<$Res>
    implements $PostsPostRequestBodyCopyWith<$Res> {
  factory _$$_PostsPostRequestBodyCopyWith(_$_PostsPostRequestBody value,
          $Res Function(_$_PostsPostRequestBody) then) =
      __$$_PostsPostRequestBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String title, String body});
}

/// @nodoc
class __$$_PostsPostRequestBodyCopyWithImpl<$Res>
    extends _$PostsPostRequestBodyCopyWithImpl<$Res, _$_PostsPostRequestBody>
    implements _$$_PostsPostRequestBodyCopyWith<$Res> {
  __$$_PostsPostRequestBodyCopyWithImpl(_$_PostsPostRequestBody _value,
      $Res Function(_$_PostsPostRequestBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$_PostsPostRequestBody(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostsPostRequestBody implements _PostsPostRequestBody {
  const _$_PostsPostRequestBody(
      {required this.userId, required this.title, required this.body});

  factory _$_PostsPostRequestBody.fromJson(Map<String, dynamic> json) =>
      _$$_PostsPostRequestBodyFromJson(json);

  @override
  final int userId;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'PostsPostRequestBody(userId: $userId, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostsPostRequestBody &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostsPostRequestBodyCopyWith<_$_PostsPostRequestBody> get copyWith =>
      __$$_PostsPostRequestBodyCopyWithImpl<_$_PostsPostRequestBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostsPostRequestBodyToJson(
      this,
    );
  }
}

abstract class _PostsPostRequestBody implements PostsPostRequestBody {
  const factory _PostsPostRequestBody(
      {required final int userId,
      required final String title,
      required final String body}) = _$_PostsPostRequestBody;

  factory _PostsPostRequestBody.fromJson(Map<String, dynamic> json) =
      _$_PostsPostRequestBody.fromJson;

  @override
  int get userId;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_PostsPostRequestBodyCopyWith<_$_PostsPostRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}
