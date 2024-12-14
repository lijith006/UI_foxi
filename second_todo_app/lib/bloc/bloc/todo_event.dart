part of 'todo_bloc.dart';

@immutable
abstract class TodoEvent extends Equatable {
  List<Object?> get props => [];
}

class FetchTodoEvent extends TodoEvent {}

class AddTodoEvent extends TodoEvent {
  final Todo todo;

  AddTodoEvent({required this.todo});
  @override
  List<Object?> get props => [todo];
}

class DeleteTodoEvent extends TodoEvent {
  final String id;
  DeleteTodoEvent({required this.id});
  @override
  List<Object?> get props => [id];
}
