part of 'todo_bloc.dart';

@immutable
abstract class TodoState {}

abstract class TodoActionSatate extends TodoState {}

class TodoInitial extends TodoState {}

class TodoLoadingState extends TodoState {}

class TodoLoadedSuccessState extends TodoState {
  final List<TodoModel> todoItem;

  TodoLoadedSuccessState({required this.todoItem});
}

class TodoErroState extends TodoState {}

class TodoNavigateToAddPageState extends TodoActionSatate {}
