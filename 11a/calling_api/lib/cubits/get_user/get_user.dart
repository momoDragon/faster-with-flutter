import 'package:bloc/bloc.dart';
import 'package:calling_api/helpers/cubit_helpers/generic/request_state.dart';
import 'package:calling_api/models/user_model.dart';
import 'package:calling_api/repository/api/users/api_users_repository.dart';

class GetUserCubit extends Cubit<RequestState<UserModel>> {
  final IApiUsersRepository apiUsersRepository;

  GetUserCubit({required this.apiUsersRepository})
      : super(const RequestState.initial());

  Future<void> request({required int userId}) async {
    emit(const RequestState.requesting());
    final resp = await apiUsersRepository.usersIdGet(userId: userId);
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
