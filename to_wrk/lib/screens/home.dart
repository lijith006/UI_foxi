// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:http/http.dart' as http;
import 'package:to_wrk/bloc/bloc/todo_bloc.dart';
import 'package:to_wrk/screens/add_todo.dart';
import 'package:to_wrk/screens/todo_card.dart';
// import 'package:to_wrk/services/todo_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TodoBloc todoBloc = TodoBloc();
  List item = [];
  bool _isLoading = true;
  // @override
  // void initState() {
  //   //fetchTodo();
  //   todoBloc.add(InitialEvent());
  //   // TODO: implement initState
  //   // todoBloc.add();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoBloc, TodoState>(
      bloc: todoBloc,
      listenWhen: (previous, current) => current is TodoActionSatate,
      buildWhen: (previous, current) => current is! TodoActionSatate,
      listener: (context, state) {
        if (state is TodoNavigateToAddPageState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddTodoPage()));
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case TodoLoadingState:
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case TodoLoadedSuccessState:
            final successState = state as TodoLoadedSuccessState;
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                centerTitle: true,
                title: Text(
                  'Todo List',
                  style: GoogleFonts.roboto(
                      color: const Color.fromARGB(209, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                ),
              ),
              body: ListView.builder(
                itemCount: successState.todoItem.length,
                itemBuilder: (context, index) {
                  return TodoCard(
                      todoModel: successState.todoItem[index],
                      onDelete: () =>
                          deleteById(successState.todoItem[index].id));
                },
              ),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {
                  todoBloc.add(TodoAddButtonNavigationEvent());
                },
                label: const Text("Add Todo"),
              ),
            );
          case TodoErroState:
            return const Scaffold(
              body: Center(
                child: Text("Error"),
              ),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }

//Navigate to add page
  // Future<void> NavigateToAddPage() async {
  //   final route = MaterialPageRoute(
  //     builder: (context) => AddTodoPage(),
  //   );
  //   await Navigator.push(context, route);
  //   fetchTodo();
  //   setState(() {
  //     _isLoading = true;
  //   });
  // }

// Navigate to editpage
  // Future<void> NavigateToEditPage(Map item) async {
  //   final route = MaterialPageRoute(
  //     builder: (context) => AddTodoPage(todo: item),
  //   );
  //   await Navigator.push(context, route);
  //   fetchTodo();
  //   setState(() {
  //     _isLoading = true;
  //   });
  // }

  Future<void> deleteById(String id) async {
    final url = 'https://api.nstack.in/v1/todos/$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);
    if (response.statusCode == 200) {
      deleteMessage();
      final filter = item
          .where(
            (element) => element['_id'] != id,
          )
          .toList();
      setState(() {
        item = filter;
      });
      deleteMessage();
    }
  }

  void deleteMessage() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
      "Deleted ....",
      style: GoogleFonts.roboto(color: Colors.red),
    )));
  }
}
