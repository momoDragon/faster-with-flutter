import 'package:bloc/bloc.dart';
import 'package:calling_api/helpers/cubit_helpers/generic/request_state.dart';
import 'package:calling_api/repository/api/posts/api_posts_repository.dart';

class DeletePostCubit extends Cubit<RequestState<dynamic>> {
  final IApiPostsRepository apiPostsRepository;

  DeletePostCubit({required this.apiPostsRepository})
      : super(const RequestState.initial());

  Future<void> request({required int postId}) async {
    emit(const RequestState.requesting());
    final resp = await apiPostsRepository.postsIdDelete(postId: postId);
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
