import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
                GoRouter.of(context)
                    .go('${GoRouter.of(context).location}/5555');
              },
              child: const Text('View profile'))
        ],
      ),
    );
  }
}
