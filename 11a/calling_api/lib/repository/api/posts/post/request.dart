import 'package:freezed_annotation/freezed_annotation.dart';
part 'request.freezed.dart';
part 'request.g.dart';

@freezed
class PostsPostRequestBody with _$PostsPostRequestBody {
  const factory PostsPostRequestBody({
    required int userId,
    required String title,
    required String body,
  }) = _PostsPostRequestBody;

  factory PostsPostRequestBody.fromJson(Map<String, dynamic> json) =>
      _$PostsPostRequestBodyFromJson(json);
}
