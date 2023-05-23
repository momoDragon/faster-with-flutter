import 'package:calling_api/ui/pages/home_page.dart';
import 'package:calling_api/ui/pages/post_page.dart';
import 'package:calling_api/ui/pages/user_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
part 'router.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<PostRoute>(
      path: ':postId',
    ),
    TypedGoRoute<UserRoute>(
      path: 'users/:userId',
    )
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

class PostRoute extends GoRouteData {
  final int postId;
  const PostRoute({required this.postId});

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      PostPage(postId: postId);
}

class UserRoute extends GoRouteData {
  final int userId;
  const UserRoute({required this.userId});

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      UserPage(userId: userId);
}
