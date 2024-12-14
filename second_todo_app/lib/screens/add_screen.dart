import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second_todo_app/bloc/bloc/todo_bloc.dart';
import 'package:second_todo_app/model/todo_model.dart';
// import 'package:second_todo_app/screens/home.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  void addTodo() {
    final title = titleController.text;
    final description = descriptionController.text;
    if (title.isNotEmpty && description.isNotEmpty) {
      final newTodo = Todo(
          id: DateTime.now().toString(),
          title: title,
          description: description,
          isCompleted: false);
      context.read<TodoBloc>().add(AddTodoEvent(todo: newTodo));
      context.read<TodoBloc>().add(FetchTodoEvent());
      Navigator.pop(context);
    } else {
      //show error
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please Enter title and description')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  addTodo();
                },
                child: const Text('Add Todo'))
          ],
        ),
      ),
    );
  }
}
