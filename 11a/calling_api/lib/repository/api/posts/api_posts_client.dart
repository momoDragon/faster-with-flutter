import 'package:calling_api/models/post_model.dart';
import 'package:calling_api/repository/api/posts/id/patch/request.dart';
import 'package:calling_api/repository/api/posts/post/request.dart';
import 'package:calling_api/repository/api/posts/post/response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_posts_client.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class ApiPostsClient {
  factory ApiPostsClient(Dio dio, {String baseUrl}) = _ApiPostsClient;

  @GET("/posts")
  Future<HttpResponse<List<PostModel>>> postsGet();

  @GET("/posts/{id}")
  Future<HttpResponse<PostModel>> postsIdGet({@Path("id") required int id});

  @POST("/posts")
  Future<HttpResponse<PostsPostResponseBody>> postsPost(
      {@Body() required PostsPostRequestBody body});

  @PATCH("/posts/{id}")
  Future<HttpResponse<PostModel>> postsIdPatch(
      {@Path("id") required int id,
      @Body() required PostsIdPatchRequestBody body});

  @DELETE("/posts/{id}")
  Future<HttpResponse> postsIdDelete({@Path("id") required int id});
}
