import 'package:bloc/bloc.dart';
import 'package:calling_api/helpers/cubit_helpers/generic/request_state.dart';
import 'package:calling_api/models/post_model.dart';
import 'package:calling_api/repository/api/posts/api_posts_repository.dart';

class GetPostsCubit extends Cubit<RequestState<List<PostModel>>> {
  final IApiPostsRepository apiPostsRepository;

  GetPostsCubit({required this.apiPostsRepository})
      : super(const RequestState.initial());

  Future<void> request() async {
    emit(const RequestState.requesting());
    final resp = await apiPostsRepository.postsGet();
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
