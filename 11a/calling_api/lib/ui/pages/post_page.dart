import 'package:calling_api/cubits/delete_post/delete_post_cubit.dart';
import 'package:calling_api/helpers/cubit_helpers/generic/request_state.dart';
import 'package:calling_api/cubits/get_post/get_post_cubit.dart';
import 'package:calling_api/models/post_model.dart';
import 'package:calling_api/repository/api/posts/api_posts_repository.dart';
import 'package:calling_api/ui/custom_widgets/custom_loading.dart';
import 'package:calling_api/ui/custom_widgets/map_request_state_to_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class PostPage extends StatefulWidget {
  final int postId;
  const PostPage({super.key, required this.postId});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  late final GetPostCubit _getPostCubit;
  late final DeletePostCubit _deletePostCubit;

  @override
  void initState() {
    _getPostCubit =
        GetPostCubit(apiPostsRepository: GetIt.I<IApiPostsRepository>())
          ..request(postId: widget.postId);
    _deletePostCubit =
        DeletePostCubit(apiPostsRepository: GetIt.I<IApiPostsRepository>());

    // listen to delete post state to show loading and success dialog
    _deletePostCubit.stream.listen((state) => mapRequestStateToWidgets<void>(
        context: context,
        state: state,
        successHandler: (_) {
          Navigator.of(context).pop();
          CustomLoadingDialog.success(
              context: context,
              afterComplete: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              });
        }));
    super.initState();
  }

  @override
  void dispose() {
    // disposing to prevent any memory leak
    _getPostCubit.close();
    _deletePostCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Post'),
        ),
        body: BlocBuilder<GetPostCubit, RequestState<PostModel>>(
          bloc: _getPostCubit,
          builder: (context, state) => state.maybeWhen(requesting: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, requested: (body) {
            return Column(
              children: [
                ListTile(
                  title: Text(body.title),
                  subtitle: Text(body.body),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              _deletePostCubit.request(postId: widget.postId);
                            },
                            child: const Text('Delete Post')),
                      ),
                    ],
                  ),
                )
              ],
            );
          }, apiError: (statusCode) {
            return Text('API ERROR: $statusCode');
          }, localError: (errorMessage) {
            return Text('LOCAL ERROR: $errorMessage');
          }, orElse: () {
            return const SizedBox();
          }),
        ));
  }
}
