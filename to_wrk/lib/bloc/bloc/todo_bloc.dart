import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:to_wrk/models/todo_models.dart';
import 'package:to_wrk/services/todo_services.dart';
// import 'package:todo_api_bloc/model/todo_model.dart';
// import 'package:todo_api_bloc/service/todo_service.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial()) {
    on<InitialEvent>(initialEvent);
    on<TodoAddButtonNavigationEvent>(todoAddButtonNavigationEvent);
    on<TodoAddButtonClickEvent>(todoAddButtonClickEvent);
  }

  FutureOr<void> initialEvent(
      InitialEvent event, Emitter<TodoState> emit) async {
    emit(TodoLoadingState());
    await Future.delayed(const Duration(seconds: 2));

    final value = await fetchTodo();
    final List<TodoModel> items = [];
    for (int i = 0; i < value.length; i++) {
      items.add(TodoModel(
          id: value[i]['_id'],
          title: value[i]['title'],
          description: value[i]['description']));
    }

    emit(TodoLoadedSuccessState(todoItem: items));
    print(items.length);
  }

  FutureOr<void> todoAddButtonNavigationEvent(
      TodoAddButtonNavigationEvent event, Emitter<TodoState> emit) {
    print("Addpage");
    emit(TodoNavigateToAddPageState());
  }

  FutureOr<void> todoAddButtonClickEvent(
      TodoAddButtonClickEvent event, Emitter<TodoState> emit) {
    print("iii");
  }
}
