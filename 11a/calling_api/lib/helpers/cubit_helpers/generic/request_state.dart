import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_state.freezed.dart';

// This is a generic state that is created for cubits that have fix state of
/// [RequestState.initial]
/// [RequestState.requesting]
/// [RequestState.requested]
/// [RequestState.refreshing]
/// [RequestState.localError]
/// [RequestState.apiError]

@freezed
class RequestState<T> with _$RequestState<T> {
  const factory RequestState.initial() = RequestInitial<T>;
  const factory RequestState.requesting() = Requesting<T>;
  const factory RequestState.requested({required T body}) = Requested<T>;
  const factory RequestState.refreshing() = Refreshing<T>;
  const factory RequestState.localError({required String errorMessage}) =
      LocalErrorRequesting<T>;
  const factory RequestState.apiError({required int statusCode}) =
      ApiErrorRequesting<T>;
}
