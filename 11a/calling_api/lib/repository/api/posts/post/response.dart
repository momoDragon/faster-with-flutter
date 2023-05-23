import 'package:freezed_annotation/freezed_annotation.dart';
part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class PostsPostResponseBody with _$PostsPostResponseBody {
  const factory PostsPostResponseBody({
    required int id,
    required int userId,
    required String title,
    required String body,
  }) = _PostsPostResponseBody;

  factory PostsPostResponseBody.fromJson(Map<String, dynamic> json) =>
      _$PostsPostResponseBodyFromJson(json);
}
