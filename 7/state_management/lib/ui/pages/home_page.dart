import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:state_management/controllers/todo_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TodoController _todoController = TodoController();
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _todoController,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('todo'),
            actions: [
              IconButton(onPressed: () {
                _todoController.removeLast();
              }, icon: const Icon(Icons.delete))
            ],
          ),
          body: Column(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Expanded(child: Consumer<TodoController>(
                    builder: (context, value, child) {
                      return ListView.builder(
                        itemCount: value.items.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(value.items[index]),
                          );
                        },
                      );
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
                              _todoController
                                  .addTodo(_textEditingController.text);
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
      },
    );
  }
}
