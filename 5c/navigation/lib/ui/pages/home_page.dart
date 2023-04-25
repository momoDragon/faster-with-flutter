import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/main.dart';
import 'package:navigation/ui/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                const ProfileRoute(userId: '4br3u4u').go(context);
              },
              child: const Text('View profile'))
        ],
      ),
    );
  }
}
