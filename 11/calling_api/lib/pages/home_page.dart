import 'package:calling_api/clients/rest_client.dart';
import 'package:calling_api/cubits/get_users/get_users_cubit.dart';
import 'package:calling_api/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final GetUsersCubit _getUsersCubit;

  @override
  void initState() {
    _getUsersCubit = GetUsersCubit(restClient: GetIt.I<RestClient>())
      ..request();

      // _getUsersCubit.stream.listen((state) {
      //   print(state);
        
      // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                _getUsersCubit.request();
              },
              icon: const Icon(Icons.replay_outlined))
        ],
      ),
      body: BlocBuilder<GetUsersCubit, GetUsersState>(
        bloc: _getUsersCubit,
        builder: (context, state) => state.maybeWhen(getting: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }, gotUsers: (users) {
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              UserModel user = users[index];
              return Text(user.toJson().toString());
            },
          );
        }, apiError: (statusCode) {
          return Text('API ERROR: $statusCode');
        }, localError: (errorMessage) {
          return Text('LOCAL ERROR: $errorMessage');
        }, orElse: () {
          return const SizedBox();
        }),
      ),
    );
  }
}
