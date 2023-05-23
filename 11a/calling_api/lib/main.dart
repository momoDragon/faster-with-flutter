
import 'package:calling_api/repository/api/users/api_users_client.dart';
import 'package:calling_api/repository/api/users/api_users_repository.dart';
import 'package:calling_api/router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'repository/api/posts/api_posts_client.dart';
import 'repository/api/posts/api_posts_repository.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(routes: $appRoutes);

void main() {
  final Dio dio = Dio();
  final ApiUsersClient apiUsersClient = ApiUsersClient(dio);
  final IApiUsersRepository apiUsersRepository =
      ApiUsersRepository(apiUsersClient: apiUsersClient);
  GetIt.I.registerSingleton<IApiUsersRepository>(apiUsersRepository);

  final ApiPostsClient apiPostsClient = ApiPostsClient(dio);
  final IApiPostsRepository apiPostsRepository =
      ApiPostsRepository(apiPostsClient: apiPostsClient);
  GetIt.I.registerSingleton<IApiPostsRepository>(apiPostsRepository);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
    );
  }
}
