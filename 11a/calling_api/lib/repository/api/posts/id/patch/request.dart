import 'package:freezed_annotation/freezed_annotation.dart';
part 'request.freezed.dart';
part 'request.g.dart';

@freezed
class PostsIdPatchRequestBody with _$PostsIdPatchRequestBody {
  const factory PostsIdPatchRequestBody({
    required String body,
  }) = _PostsIdPatchRequestBody;

  factory PostsIdPatchRequestBody.fromJson(Map<String, dynamic> json) =>
      _$PostsIdPatchRequestBodyFromJson(json);
}
