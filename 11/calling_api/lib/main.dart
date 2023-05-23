import 'package:calling_api/clients/rest_client.dart';
import 'package:calling_api/pages/home_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


void main() {
  final Dio dio = Dio();
  final RestClient restClient = RestClient(dio);
  GetIt.I.registerSingleton<RestClient>(restClient);

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
