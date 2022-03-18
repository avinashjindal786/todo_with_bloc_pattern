import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_with_bloc_pattern/data/Model.dart';
import 'package:todo_with_bloc_pattern/data/repo.dart';
part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  final Repo repo;

  TodosCubit({required this.repo}) : super(TodosInitial());

  void fetchTodos(){
    repo.fetchTodos().then((value) {
      emit(TodosLoaded(todo: value));
    });
  }
}