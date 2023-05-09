// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preference_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserPreferenceModel _$UserPreferenceModelFromJson(Map<String, dynamic> json) {
  return _UserPreferenceModel.fromJson(json);
}

/// @nodoc
mixin _$UserPreferenceModel {
  bool get showMusic => throw _privateConstructorUsedError;
  bool get showVideo => throw _privateConstructorUsedError;
  bool get showImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPreferenceModelCopyWith<UserPreferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferenceModelCopyWith<$Res> {
  factory $UserPreferenceModelCopyWith(
          UserPreferenceModel value, $Res Function(UserPreferenceModel) then) =
      _$UserPreferenceModelCopyWithImpl<$Res, UserPreferenceModel>;
  @useResult
  $Res call({bool showMusic, bool showVideo, bool showImage});
}

/// @nodoc
class _$UserPreferenceModelCopyWithImpl<$Res, $Val extends UserPreferenceModel>
    implements $UserPreferenceModelCopyWith<$Res> {
  _$UserPreferenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showMusic = null,
    Object? showVideo = null,
    Object? showImage = null,
  }) {
    return _then(_value.copyWith(
      showMusic: null == showMusic
          ? _value.showMusic
          : showMusic // ignore: cast_nullable_to_non_nullable
              as bool,
      showVideo: null == showVideo
          ? _value.showVideo
          : showVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      showImage: null == showImage
          ? _value.showImage
          : showImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserPreferenceModelCopyWith<$Res>
    implements $UserPreferenceModelCopyWith<$Res> {
  factory _$$_UserPreferenceModelCopyWith(_$_UserPreferenceModel value,
          $Res Function(_$_UserPreferenceModel) then) =
      __$$_UserPreferenceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showMusic, bool showVideo, bool showImage});
}

/// @nodoc
class __$$_UserPreferenceModelCopyWithImpl<$Res>
    extends _$UserPreferenceModelCopyWithImpl<$Res, _$_UserPreferenceModel>
    implements _$$_UserPreferenceModelCopyWith<$Res> {
  __$$_UserPreferenceModelCopyWithImpl(_$_UserPreferenceModel _value,
      $Res Function(_$_UserPreferenceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showMusic = null,
    Object? showVideo = null,
    Object? showImage = null,
  }) {
    return _then(_$_UserPreferenceModel(
      showMusic: null == showMusic
          ? _value.showMusic
          : showMusic // ignore: cast_nullable_to_non_nullable
              as bool,
      showVideo: null == showVideo
          ? _value.showVideo
          : showVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      showImage: null == showImage
          ? _value.showImage
          : showImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserPreferenceModel
    with DiagnosticableTreeMixin
    implements _UserPreferenceModel {
  const _$_UserPreferenceModel(
      {required this.showMusic,
      required this.showVideo,
      required this.showImage});

  factory _$_UserPreferenceModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserPreferenceModelFromJson(json);

  @override
  final bool showMusic;
  @override
  final bool showVideo;
  @override
  final bool showImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserPreferenceModel(showMusic: $showMusic, showVideo: $showVideo, showImage: $showImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserPreferenceModel'))
      ..add(DiagnosticsProperty('showMusic', showMusic))
      ..add(DiagnosticsProperty('showVideo', showVideo))
      ..add(DiagnosticsProperty('showImage', showImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPreferenceModel &&
            (identical(other.showMusic, showMusic) ||
                other.showMusic == showMusic) &&
            (identical(other.showVideo, showVideo) ||
                other.showVideo == showVideo) &&
            (identical(other.showImage, showImage) ||
                other.showImage == showImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, showMusic, showVideo, showImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPreferenceModelCopyWith<_$_UserPreferenceModel> get copyWith =>
      __$$_UserPreferenceModelCopyWithImpl<_$_UserPreferenceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPreferenceModelToJson(
      this,
    );
  }
}

abstract class _UserPreferenceModel implements UserPreferenceModel {
  const factory _UserPreferenceModel(
      {required final bool showMusic,
      required final bool showVideo,
      required final bool showImage}) = _$_UserPreferenceModel;

  factory _UserPreferenceModel.fromJson(Map<String, dynamic> json) =
      _$_UserPreferenceModel.fromJson;

  @override
  bool get showMusic;
  @override
  bool get showVideo;
  @override
  bool get showImage;
  @override
  @JsonKey(ignore: true)
  _$$_UserPreferenceModelCopyWith<_$_UserPreferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
