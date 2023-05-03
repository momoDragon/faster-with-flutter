part of 'todo_cubit.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = _Initial;
  const factory TodoState.loading({required List<String> items}) = _Loading;
  const factory TodoState.got({required List<String> items}) = _Got;
}
