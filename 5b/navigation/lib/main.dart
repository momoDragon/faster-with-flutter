import 'package:flutter/material.dart';
import 'package:navigation/ui/pages/home_page.dart';
import 'package:navigation/ui/pages/login_page.dart';
import 'package:navigation/ui/pages/profile_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const LoginPage(), routes: [
    GoRoute(
        path: 'home',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: ':userId',
            builder: (context, state) =>
                ProfilePage(userId: state.params['userId']!),
          )
        ])
  ])
]);

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
