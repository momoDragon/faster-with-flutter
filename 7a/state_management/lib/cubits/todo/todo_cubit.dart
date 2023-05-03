import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_state.dart';
part 'todo_cubit.freezed.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(const TodoState.initial());

  final List<String> _items = [];

  void addTodo(String todo) async {
    emit(_Loading(items: _items));

    // Simulate an async task
    await Future.delayed(const Duration(seconds: 2));
    _items.add(todo);

    emit(_Got(items: _items));
  }

  void removeLast() async {
    if (_items.isNotEmpty) {
      emit(_Loading(items: _items));
      
      // Simulate an async task
      await Future.delayed(const Duration(seconds: 2));
      _items.removeLast();

      emit(_Got(items: _items));
    }
  }
}
