import 'package:todo_with_bloc_pattern/data/network_service.dart';

import 'Model.dart';

class Repo{

  final NetworkService service;
  Repo({required this.service});

  Future<List<Todo>> fetchTodos() async {
    final todoRaw = await service.fetchTodos();
    return todoRaw.map((e) => Todo.fromJson(e)).toList();
  }
}
