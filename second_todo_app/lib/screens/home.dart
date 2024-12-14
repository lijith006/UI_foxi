import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:http/http.dart';
import 'package:second_todo_app/bloc/bloc/todo_bloc.dart';
import 'package:second_todo_app/screens/add_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Home'),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state is TodoLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is TodoLoadedState) {
            return ListView.builder(
              itemCount: state.todo.length,
              itemBuilder: (context, index) {
                final todo = state.todo[index];
                return ListTile(
                  title: Text(todo.title),
                  subtitle: Text(todo.description),
                  trailing: IconButton(
                      onPressed: () {
                        context
                            .read<TodoBloc>()
                            .add(DeleteTodoEvent(id: todo.id));
                      },
                      icon: const Icon(Icons.delete)),
                );
              },
            );
          } else if (state is TodoErrorState) {
            return Center(
              child: Text('Error:${state.msg}'),
            );
          }
          return const Center(
            child: Text('No todos available'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddScreen(),
              ));
          context.read<TodoBloc>().add(FetchTodoEvent());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
