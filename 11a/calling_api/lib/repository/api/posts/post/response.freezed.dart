// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostsPostResponseBody _$PostsPostResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _PostsPostResponseBody.fromJson(json);
}

/// @nodoc
mixin _$PostsPostResponseBody {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsPostResponseBodyCopyWith<PostsPostResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsPostResponseBodyCopyWith<$Res> {
  factory $PostsPostResponseBodyCopyWith(PostsPostResponseBody value,
          $Res Function(PostsPostResponseBody) then) =
      _$PostsPostResponseBodyCopyWithImpl<$Res, PostsPostResponseBody>;
  @useResult
  $Res call({int id, int userId, String title, String body});
}

/// @nodoc
class _$PostsPostResponseBodyCopyWithImpl<$Res,
        $Val extends PostsPostResponseBody>
    implements $PostsPostResponseBodyCopyWith<$Res> {
  _$PostsPostResponseBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_PostsPostResponseBodyCopyWith<$Res>
    implements $PostsPostResponseBodyCopyWith<$Res> {
  factory _$$_PostsPostResponseBodyCopyWith(_$_PostsPostResponseBody value,
          $Res Function(_$_PostsPostResponseBody) then) =
      __$$_PostsPostResponseBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int userId, String title, String body});
}

/// @nodoc
class __$$_PostsPostResponseBodyCopyWithImpl<$Res>
    extends _$PostsPostResponseBodyCopyWithImpl<$Res, _$_PostsPostResponseBody>
    implements _$$_PostsPostResponseBodyCopyWith<$Res> {
  __$$_PostsPostResponseBodyCopyWithImpl(_$_PostsPostResponseBody _value,
      $Res Function(_$_PostsPostResponseBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$_PostsPostResponseBody(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_PostsPostResponseBody implements _PostsPostResponseBody {
  const _$_PostsPostResponseBody(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});

  factory _$_PostsPostResponseBody.fromJson(Map<String, dynamic> json) =>
      _$$_PostsPostResponseBodyFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'PostsPostResponseBody(id: $id, userId: $userId, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostsPostResponseBody &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostsPostResponseBodyCopyWith<_$_PostsPostResponseBody> get copyWith =>
      __$$_PostsPostResponseBodyCopyWithImpl<_$_PostsPostResponseBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostsPostResponseBodyToJson(
      this,
    );
  }
}

abstract class _PostsPostResponseBody implements PostsPostResponseBody {
  const factory _PostsPostResponseBody(
      {required final int id,
      required final int userId,
      required final String title,
      required final String body}) = _$_PostsPostResponseBody;

  factory _PostsPostResponseBody.fromJson(Map<String, dynamic> json) =
      _$_PostsPostResponseBody.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_PostsPostResponseBodyCopyWith<_$_PostsPostResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}
