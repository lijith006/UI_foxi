part of 'todo_bloc.dart';

@immutable
abstract class TodoEvent {}

class InitialEvent extends TodoEvent {}

class TodoAddButtonClickEvent extends TodoEvent {}

class TodoEditButtonClickEvent extends TodoEvent {}

class TodoAddButtonNavigationEvent extends TodoEvent {}

class TodoEditButtonNavigationEvent extends TodoEvent {}
