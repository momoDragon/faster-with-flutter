import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_response.freezed.dart';

// A generic union classes for each state

@freezed
class APIResponse<T> with _$APIResponse<T> {
  const factory APIResponse.success({required T body}) = ApiSuccessResponse<T>;
  const factory APIResponse.localError({required String message}) =
      LocalErrorResponse<T>;
  const factory APIResponse.apiError({required int statusCode}) =
      ApiErrorResponse<T>;
}
