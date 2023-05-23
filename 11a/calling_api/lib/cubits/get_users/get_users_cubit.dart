import 'package:bloc/bloc.dart';
import 'package:calling_api/helpers/cubit_helpers/generic/request_state.dart';
import 'package:calling_api/models/user_model.dart';
import 'package:calling_api/repository/api/users/api_users_repository.dart';

class GetUsersCubit extends Cubit<RequestState<List<UserModel>>> {
  final IApiUsersRepository apiUserRepository;
  GetUsersCubit({required this.apiUserRepository})
      : super(const RequestState.initial());

  Future<void> request() async {
    emit(const RequestState.requesting());
    final resp = await apiUserRepository.usersGet();
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
