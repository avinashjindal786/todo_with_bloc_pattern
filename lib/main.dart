import 'package:flutter/material.dart';
import 'package:todo_with_bloc_pattern/presentation/route.dart';
//import 'package:todo_with_bloc_pattern/presentation/screen/todo_screen.dart';
import 'package:todo_with_bloc_pattern/presentation/todoscreen.dart';

void main() {
  runApp(MyApp(router: AppRouter(),));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final AppRouter router;
  MyApp({required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
    );
  }
}
