import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:state_management/controllers/todo_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/cubits/todo/todo_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TodoCubit _todoCubit = TodoCubit();
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('todo'),
        actions: [
          IconButton(
              onPressed: () {
                _todoCubit.removeLast();
              },
              icon: const Icon(Icons.delete))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              Expanded(
                  child: BlocBuilder<TodoCubit, TodoState>(
                bloc: _todoCubit,
                builder: (context, state) {
                  return state.maybeWhen(initial: () {
                    return const Text('Add an item to get started!');
                  }, loading: (items) {
                    return const Center(child:CircularProgressIndicator());
                  }, got: (items) {
                    return ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(items[index]),
                        );
                      },
                    );
                  }, orElse: () {
                    return const SizedBox();
                  });
                },
              )),
              Container(
                color: Colors.red,
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        controller: _textEditingController,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          _todoCubit.addTodo(_textEditingController.text);
                          _textEditingController.clear();
                        },
                        child: const Text('add'))
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
