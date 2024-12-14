import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:second_todo_app/model/todo_model.dart';
import 'package:second_todo_app/services/api.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final Api api;
  TodoBloc(this.api) : super(TodoInitial()) {
    on<FetchTodoEvent>((event, emit) async {
      emit(TodoLoadingState());
      try {
        final todos = await api.fetchTodo();
        emit(TodoLoadedState(todos));
      } catch (e) {
        print("Error fetching todos: $e");
        emit(TodoErrorState(e.toString()));
      }
    });

    on<AddTodoEvent>(
      (event, emit) async {
        try {
          await api.addTodo(event.todo);
          final todos = await api.fetchTodo();
          emit(TodoLoadedState(todos));
        } catch (e) {
          emit(TodoErrorState(e.toString()));
        }
      },
    );

    on<DeleteTodoEvent>((event, emit) async {
      try {
        await api.deleteTodo(event.id);
        final todos = await api.fetchTodo();
        emit(TodoLoadedState(todos));
      } catch (e) {
        emit(TodoErrorState(e.toString()));
      }
    });
  }
}
