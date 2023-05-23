import 'package:calling_api/helpers/api/api_helper.dart';
import 'package:calling_api/helpers/api/api_response.dart';
import 'package:calling_api/models/user_model.dart';
import 'package:calling_api/repository/api/users/api_users_client.dart';

abstract class IApiUsersRepository {
  Future<APIResponse<List<UserModel>>> usersGet();
  Future<APIResponse<UserModel>> usersIdGet({required int userId});
}

class ApiUsersRepository implements IApiUsersRepository {
  final ApiUsersClient apiUsersClient;
  ApiUsersRepository({required this.apiUsersClient});

  @override
  Future<APIResponse<List<UserModel>>> usersGet() {
    dynamic request = apiUsersClient.usersGet;
    return ApiHelper.requestHandler<List<UserModel>>(request,
        namedArguments: {});
  }

  @override
  Future<APIResponse<UserModel>> usersIdGet({required int userId}) {
    dynamic request = apiUsersClient.usersIdGet;
    return ApiHelper.requestHandler<UserModel>(request,
        namedArguments: {#id: userId});
  }
}
