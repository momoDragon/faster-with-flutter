
import 'package:calling_api/helpers/api/api_helper.dart';
import 'package:calling_api/helpers/api/api_response.dart';
import 'package:calling_api/models/post_model.dart';
import 'package:calling_api/repository/api/posts/api_posts_client.dart';
import 'package:calling_api/repository/api/posts/post/request.dart';
import 'package:calling_api/repository/api/posts/post/response.dart';

abstract class IApiPostsRepository {
  Future<APIResponse<List<PostModel>>> postsGet();
  Future<APIResponse<PostModel>> postsIdGet({required int postId});
  Future<APIResponse<dynamic>> postsIdDelete({required int postId});
  Future<APIResponse<PostsPostResponseBody>> postsPost(
      {required PostsPostRequestBody body});
}

class ApiPostsRepository implements IApiPostsRepository {
  final ApiPostsClient apiPostsClient;
  ApiPostsRepository({required this.apiPostsClient});

  @override
  Future<APIResponse<List<PostModel>>> postsGet() {
    dynamic request = apiPostsClient.postsGet;
    return ApiHelper.requestHandler<List<PostModel>>(request,
        namedArguments: {});
  }

  @override
  Future<APIResponse<PostModel>> postsIdGet({required int postId}) {
    dynamic request = apiPostsClient.postsIdGet;
    return ApiHelper.requestHandler<PostModel>(request,
        namedArguments: {#id: postId});
  }

  @override
  Future<APIResponse<dynamic>> postsIdDelete({required int postId}) {
    dynamic request = apiPostsClient.postsIdDelete;
    return ApiHelper.requestHandler<dynamic>(request,
        namedArguments: {#id: postId});
  }

  @override
  Future<APIResponse<PostsPostResponseBody>> postsPost(
      {required PostsPostRequestBody body}) {
    dynamic request = apiPostsClient.postsPost;
    return ApiHelper.requestHandler<PostsPostResponseBody>(request,
        namedArguments: {#body: body});
  }
}
