import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/color/color_theme.dart';
import 'package:todoapp/page/HomePage.dart';
import 'package:todoapp/provider/todos.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  static final String title = 'Todo App';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => TodosProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primaryColor: ColorTheme().blue,
          scaffoldBackgroundColor: ColorTheme().likewhite,
        ),
        home: HomePage(),
      ));
}
