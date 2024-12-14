part of 'todo_bloc.dart';

abstract class TodoState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class TodoInitial extends TodoState {}

class TodoLoadingState extends TodoState {}

class TodoLoadedState extends TodoState {
  final List<Todo> todo;
  TodoLoadedState(this.todo);
  @override
  List<Object?> get props => [todo];
}

class TodoErrorState extends TodoState {
  final String msg;
  TodoErrorState(this.msg);
  @override
  List<Object?> get props => [msg];
}
