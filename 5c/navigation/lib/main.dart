import 'package:flutter/material.dart';
import 'package:navigation/ui/pages/home_page.dart';
import 'package:navigation/ui/pages/login_page.dart';
import 'package:navigation/ui/pages/profile_page.dart';
import 'package:go_router/go_router.dart';
part 'main.g.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(routes: $appRoutes);

@TypedGoRoute<LoginRoute>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<HomeRoute>(path: 'home', routes: [
      TypedGoRoute<ProfileRoute>(
        path: ':userId',
      )
    ])
  ],
)

class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

class ProfileRoute extends GoRouteData {
  final String userId;
  const ProfileRoute({required this.userId});

  @override
  Widget build(BuildContext context, GoRouterState state) => ProfilePage(
        userId: userId,
      );
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
