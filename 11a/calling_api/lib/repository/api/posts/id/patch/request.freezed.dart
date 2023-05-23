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

PostsIdPatchRequestBody _$PostsIdPatchRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _PostsIdPatchRequestBody.fromJson(json);
}

/// @nodoc
mixin _$PostsIdPatchRequestBody {
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsIdPatchRequestBodyCopyWith<PostsIdPatchRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsIdPatchRequestBodyCopyWith<$Res> {
  factory $PostsIdPatchRequestBodyCopyWith(PostsIdPatchRequestBody value,
          $Res Function(PostsIdPatchRequestBody) then) =
      _$PostsIdPatchRequestBodyCopyWithImpl<$Res, PostsIdPatchRequestBody>;
  @useResult
  $Res call({String body});
}

/// @nodoc
class _$PostsIdPatchRequestBodyCopyWithImpl<$Res,
        $Val extends PostsIdPatchRequestBody>
    implements $PostsIdPatchRequestBodyCopyWith<$Res> {
  _$PostsIdPatchRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostsIdPatchRequestBodyCopyWith<$Res>
    implements $PostsIdPatchRequestBodyCopyWith<$Res> {
  factory _$$_PostsIdPatchRequestBodyCopyWith(_$_PostsIdPatchRequestBody value,
          $Res Function(_$_PostsIdPatchRequestBody) then) =
      __$$_PostsIdPatchRequestBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String body});
}

/// @nodoc
class __$$_PostsIdPatchRequestBodyCopyWithImpl<$Res>
    extends _$PostsIdPatchRequestBodyCopyWithImpl<$Res,
        _$_PostsIdPatchRequestBody>
    implements _$$_PostsIdPatchRequestBodyCopyWith<$Res> {
  __$$_PostsIdPatchRequestBodyCopyWithImpl(_$_PostsIdPatchRequestBody _value,
      $Res Function(_$_PostsIdPatchRequestBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$_PostsIdPatchRequestBody(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostsIdPatchRequestBody implements _PostsIdPatchRequestBody {
  const _$_PostsIdPatchRequestBody({required this.body});

  factory _$_PostsIdPatchRequestBody.fromJson(Map<String, dynamic> json) =>
      _$$_PostsIdPatchRequestBodyFromJson(json);

  @override
  final String body;

  @override
  String toString() {
    return 'PostsIdPatchRequestBody(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostsIdPatchRequestBody &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostsIdPatchRequestBodyCopyWith<_$_PostsIdPatchRequestBody>
      get copyWith =>
          __$$_PostsIdPatchRequestBodyCopyWithImpl<_$_PostsIdPatchRequestBody>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostsIdPatchRequestBodyToJson(
      this,
    );
  }
}

abstract class _PostsIdPatchRequestBody implements PostsIdPatchRequestBody {
  const factory _PostsIdPatchRequestBody({required final String body}) =
      _$_PostsIdPatchRequestBody;

  factory _PostsIdPatchRequestBody.fromJson(Map<String, dynamic> json) =
      _$_PostsIdPatchRequestBody.fromJson;

  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_PostsIdPatchRequestBodyCopyWith<_$_PostsIdPatchRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}
