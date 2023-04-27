import 'package:flutter/material.dart';

import 'models/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final User _user;

  User _getUserFromApi() {
    // api reutnr json
    // convert json to user object and return it
    var json = {
      "id": 1,
      "name": "Mozes",
      "username": "mo",
      "email": "mo@test.com"
    };
    return User.fromJson(json);
  }

  void _sendUserToApi() {
    // convert object to json
    // send to api
    Map<String, dynamic> json = _user.toJson();
    print(json);
  }

  @override
  void initState() {
    _user = _getUserFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(_user.id.toString()),
          Text(_user.name),
          Text(_user.username),
          Text(_user.email),
          TextButton(
              onPressed: () {
                _sendUserToApi();
              },
              child: const Text('Submit'))
        ],
      ),
    );
  }
}
