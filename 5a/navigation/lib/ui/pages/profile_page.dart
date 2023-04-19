import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String userId;
  const ProfilePage({super.key, required this.userId});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Column(
        children: [
          Text(widget.userId),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Back Home'))
        ],
      ),
    );
  }
}
