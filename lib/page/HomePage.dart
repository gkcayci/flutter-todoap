import 'package:flutter/material.dart';
import 'package:todoapp/color/color_theme.dart';
import 'package:todoapp/main.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:todoapp/widget/add_todo_dialog.dart';
import 'package:todoapp/widget/completed_list_widget.dart';
import 'package:todoapp/widget/todo_list_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      TodoListWidget(),
      CompletedListWidget(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(TodoApp.title),
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorTheme().blue,
        child: Icon(Icons.add),
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AddTodoDialogWidget(),
          barrierDismissible: false,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: (AnimatedBottomNavigationBar(
        height: Get.height / 12,
        activeColor: ColorTheme().white.withOpacity(0.7),
        inactiveColor: ColorTheme().white,
        gapLocation: GapLocation.center,
        backgroundColor: ColorTheme().blue,
        icons: [Icons.fact_check_outlined, Icons.done],
        iconSize: 30,
        activeIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
      )),
    );
  }
}
