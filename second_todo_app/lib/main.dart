import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second_todo_app/bloc/bloc/todo_bloc.dart';
import 'package:second_todo_app/screens/home.dart';
import 'package:second_todo_app/services/api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoBloc(Api())..add(FetchTodoEvent()),
      child: MaterialApp(
        title: 'Todo APP',
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
