import 'package:calling_api/helpers/cubit_helpers/generic/request_state.dart';
import 'package:calling_api/cubits/get_posts/get_posts_cubit.dart';
import 'package:calling_api/main.dart';
import 'package:calling_api/models/post_model.dart';
import 'package:calling_api/repository/api/posts/api_posts_repository.dart';
import 'package:calling_api/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final GetPostsCubit _getPostsCubit;

  @override
  void initState() {
    _getPostsCubit =
        GetPostsCubit(apiPostsRepository: GetIt.I<IApiPostsRepository>())
          ..request();
    super.initState();
  }

  @override
  void dispose() {
    _getPostsCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                _getPostsCubit.request();
              },
              icon: const Icon(Icons.replay_outlined))
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.redAccent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
                'Note: The api used is only for read, any create, update and delete will return mocked responces from the api but the data will not actually be updated')
          ],
        ),
      ),
      body: BlocBuilder<GetPostsCubit, RequestState<List<PostModel>>>(
        bloc: _getPostsCubit,
        builder: (context, state) => state.maybeWhen(requesting: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }, requested: (posts) {
          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              PostModel post = posts[index];
              return ListTile(
                subtitle: Text('User ID: ${post.userId} Post: ${post.id}'),
                title: Text(post.title),
                leading: IconButton(
                    onPressed: () {
                      UserRoute(userId: post.userId).go(context);
                    },
                    icon: const Icon(Icons.person)),
                trailing: IconButton(
                    onPressed: () {
                      PostRoute(postId: post.id).go(context);
                    },
                    icon: const Icon(Icons.read_more)),
              );
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
