import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/main.dart';
import 'package:navigation/ui/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                const HomeRoute().go(context);
              },
              child: const Text('Login'))
        ],
      ),
    );
  }
}
