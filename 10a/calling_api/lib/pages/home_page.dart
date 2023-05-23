import 'dart:convert';

import 'package:calling_api/clients/rest_client.dart';
import 'package:calling_api/models/user_model.dart';
import 'package:dio/dio.dart';
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
  final RestClient _restClient = RestClient(Dio());
  Future<List<UserModel>>? fetch;
  
  @override
  void initState() {
    fetch = _restClient.usersGet();
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
