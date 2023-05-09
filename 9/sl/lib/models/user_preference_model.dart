import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_preference_model.freezed.dart';
part 'user_preference_model.g.dart';

@freezed
class UserPreferenceModel with _$UserPreferenceModel {
  const factory UserPreferenceModel({
    required bool showMusic,
    required bool showVideo,
    required bool showImage,
  }) = _UserPreferenceModel;

  factory UserPreferenceModel.fromJson(Map<String, Object?> json)
      => _$UserPreferenceModelFromJson(json);
}
