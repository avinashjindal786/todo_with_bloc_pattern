import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_with_bloc_pattern/constant/string.dart';
import 'package:todo_with_bloc_pattern/cubic/todos_cubit.dart';
import 'package:todo_with_bloc_pattern/data/network_service.dart';
import 'package:todo_with_bloc_pattern/data/repo.dart';
import 'package:todo_with_bloc_pattern/presentation/add_todo_screen.dart';
import 'package:todo_with_bloc_pattern/presentation/editScreen.dart';
import 'package:todo_with_bloc_pattern/presentation/todoscreen.dart';

class AppRouter{

  late Repo repo;
  AppRouter() {
    repo = Repo(service: NetworkService());

  }

  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case "/":
        return MaterialPageRoute(builder: (_)=> BlocProvider(
          create: (BuildContext context) => TodosCubit(repo: repo), child: TodoScreen()));
      case EDIT_TODO_ROUTE:
        return MaterialPageRoute(builder: (_)=> EditScreen());
      case ADD_TODO_ROUTE:
        return MaterialPageRoute(builder: (_)=> AddTodoScreen());
      default:
        throw('This route name does not exit');
    }

  }

}