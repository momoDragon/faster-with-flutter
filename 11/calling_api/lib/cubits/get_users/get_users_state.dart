part of 'get_users_cubit.dart';

@freezed
class GetUsersState with _$GetUsersState {
  const factory GetUsersState.initial() = _Initial;
  const factory GetUsersState.getting() = GettingUsers;
  const factory GetUsersState.gotUsers({required List<UserModel> users}) =
      GotUsers;
  const factory GetUsersState.localError({required String errorMessage}) =
      LocalErrorGettingUsers;
  const factory GetUsersState.apiError({required int statusCode}) =
      ApiErrorGettingUsers;
}
