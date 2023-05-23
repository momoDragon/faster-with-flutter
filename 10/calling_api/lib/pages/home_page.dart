import 'dart:convert';

import 'package:calling_api/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<UserModel>>? fetch;

  Future<List<UserModel>> fetchUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final List<UserModel> users = [];
      for (var user in jsonData) {
        users.add(UserModel.fromJson(user));
      }
      return users;
    } else {
      return [];
    }
  }

  @override
  void initState() {
    fetch = fetchUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<UserModel>>(
        future: fetch,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              UserModel user = snapshot.data![index];
              return Text(user.toJson().toString());
            },
          );
        },
      ),
    );
  }
}
