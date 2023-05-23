import 'package:bloc/bloc.dart';
import 'package:calling_api/helpers/cubit_helpers/generic/request_state.dart';
import 'package:calling_api/repository/api/posts/api_posts_repository.dart';
import 'package:calling_api/repository/api/posts/post/request.dart';
import 'package:calling_api/repository/api/posts/post/response.dart';

class CreatePostCubit extends Cubit<RequestState<PostsPostResponseBody>> {
  final IApiPostsRepository apiPostsRepository;

  CreatePostCubit({required this.apiPostsRepository})
      : super(const RequestState.initial());

  Future<void> request({required PostsPostRequestBody body}) async {
    emit(const RequestState.requesting());
    final resp = await apiPostsRepository.postsPost(body: body);
    resp.maybeWhen(
        success: (body) {
          emit(RequestState.requested(body: body));
        },
        localError: (message) {
          emit(RequestState.localError(errorMessage: message));
        },
        apiError: (statusCode) {
          emit(RequestState.apiError(statusCode: statusCode));
        },
        orElse: () {});
  }
}
