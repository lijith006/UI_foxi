import 'dart:convert';

import 'package:second_todo_app/model/todo_model.dart';
import 'package:http/http.dart' as http;

class Api {
  final String baseUrl = 'https://api.nstack.in/v1/todos';
  final String getUrl = 'https://api.nstack.in/v1/todos?page=1&limit=10';

  Future<List<Todo>> fetchTodo() async {
    final response = await http.get(Uri.parse(getUrl));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final List<dynamic> data = jsonData['data'];
      // List<dynamic> data = json.decode(response.body);
      return data.map((item) => Todo.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load tasks');
    }
  }

  //   Future<void> onFetchTodos(
  //     FetchTodoEvent event, Emitter<TodoState> emit) async {
  //   emit(TodoLoading());
  //   try {
  //     final response = await http.get(
  //       Uri.parse(url),
  //       headers: {'Content-Type': 'application/json'},
  //     ).timeout(const Duration(seconds: 30));
  //     if (response.statusCode == 200) {
  //       final json = jsonDecode(response.body) as Map;
  //       final result = json['items'] as List;
  //       emit(TodoSuccess(result));
  //     } else {
  //       emit(const TodoError('Loading failed'));
  //     }
  //   } catch (e) {
  //     emit(TodoError('An Error Occured:$e'));
  //   }
  // }

  Future<void> addTodo(Todo todo) async {
    final jsonBody = json.encode(todo.toJson());
    print('JSON body to send: $jsonBody');
    //kkkkkkkkkkkkkkkkkkkk
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(todo.toJson()),
    );
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 201) {
      // Handle success
      print('Task added successfully!');
    } else {
      // Handle error
      print('Error adding task: ${response.body}');
    }
    // if (response.statusCode != 201) {
    //   print('Request Body: ${json.encode(todo.toJson())}');

    //   print('Response body: ${response.body}');
    //   throw Exception('Failed to add task');
    // }
  }

  Future<void> deleteTodo(String id) async {
    final response = await http.delete(Uri.parse('$baseUrl/$id'));
    if (response.statusCode != 200) {
      throw Exception('Failed to delete task');
    }
  }
}
