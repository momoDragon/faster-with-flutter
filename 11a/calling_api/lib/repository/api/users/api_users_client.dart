import 'package:calling_api/models/user_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api_users_client.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class ApiUsersClient {
  factory ApiUsersClient(Dio dio, {String baseUrl}) = _ApiUsersClient;

  @GET("/users")
  Future<HttpResponse<List<UserModel>>> usersGet();

  @GET("/users/{id}")
  Future<HttpResponse<UserModel>> usersIdGet(
      {@Path("id") required int id});
}
