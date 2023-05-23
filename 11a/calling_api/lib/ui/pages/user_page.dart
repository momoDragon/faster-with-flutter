import 'package:calling_api/cubits/create_post/create_post_cubit.dart';
import 'package:calling_api/helpers/cubit_helpers/generic/request_state.dart';
import 'package:calling_api/cubits/get_user/get_user.dart';
import 'package:calling_api/models/user_model.dart';
import 'package:calling_api/repository/api/posts/api_posts_repository.dart';
import 'package:calling_api/repository/api/posts/post/request.dart';
import 'package:calling_api/repository/api/users/api_users_repository.dart';
import 'package:calling_api/ui/custom_widgets/custom_loading.dart';
import 'package:calling_api/ui/custom_widgets/map_request_state_to_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class UserPage extends StatefulWidget {
  final int userId;
  const UserPage({super.key, required this.userId});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late final GetUserCubit _getUserCubit;
  late final CreatePostCubit _createPostCubit;
  final TextEditingController _title = TextEditingController();
  final TextEditingController _body = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _getUserCubit =
        GetUserCubit(apiUsersRepository: GetIt.I<IApiUsersRepository>())
          ..request(userId: widget.userId);
    _createPostCubit =
        CreatePostCubit(apiPostsRepository: GetIt.I<IApiPostsRepository>());

    // listen to create post state to show loading and success dialog
    _createPostCubit.stream.listen((state) => mapRequestStateToWidgets<void>(
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
    _title.dispose();
    _body.dispose();
    _getUserCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User'),
        ),
        body: BlocBuilder<GetUserCubit, RequestState<UserModel>>(
          bloc: _getUserCubit,
          builder: (context, state) => state.maybeWhen(requesting: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, requested: (body) {
            return Column(
              children: [
                ListTile(
                  title: Text(body.name),
                  subtitle: Text(body.username),
                ),
                const Text('Create Post',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: _title,
                            decoration:
                                const InputDecoration(labelText: 'Title'),
                            validator: (value) {
                              if (value == '') {
                                return 'Cannot Be Empty';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: _body,
                            decoration:
                                const InputDecoration(labelText: 'Description'),
                            validator: (value) {
                              if (value == '') {
                                return 'Cannot Be Empty';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.green),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                    ),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _createPostCubit.request(
                                            body: PostsPostRequestBody(
                                                title: _title.text,
                                                body: _body.text,
                                                userId: widget.userId));
                                      }
                                    },
                                    child: const Text('Post!')),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ))
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
