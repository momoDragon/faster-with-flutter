import 'package:bloc/bloc.dart';
import 'package:calling_api/clients/rest_client.dart';
import 'package:calling_api/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_users_state.dart';
part 'get_users_cubit.freezed.dart';

class GetUsersCubit extends Cubit<GetUsersState> {
  final RestClient restClient;
  GetUsersCubit({required this.restClient})
      : super(const GetUsersState.initial());

  Future<void> request() async {
    emit(const GettingUsers());
    try {
      final resp = await restClient.usersGet();
      final users = resp.data;
      emit(GotUsers(users: users));
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.badResponse:
          final statusCode = e.response!.statusCode;
          emit(ApiErrorGettingUsers(statusCode: statusCode!));
          break;
        case DioErrorType.unknown:
          emit(const LocalErrorGettingUsers(errorMessage: 'NETWORK'));
          break;
        default:
          emit(const LocalErrorGettingUsers(errorMessage: 'UNKNOWN'));
      }
    }
  }
}
