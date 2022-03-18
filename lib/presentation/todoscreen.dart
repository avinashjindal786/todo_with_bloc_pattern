import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_with_bloc_pattern/constant/string.dart';
import 'package:todo_with_bloc_pattern/cubic/todos_cubit.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {





  @override
  Widget build(BuildContext context) {

    BlocProvider.of<TodosCubit>(context).fetchTodos();

    return Scaffold(
      appBar: AppBar(
        title: Text("Todo"),
        actions: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, ADD_TODO_ROUTE);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: Center(
        child: Text("Todo Sreen"),
      ),
    );
  }
}
