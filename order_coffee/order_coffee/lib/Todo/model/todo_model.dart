import 'package:flutter/material.dart';
import 'package:ordercoffee/Todo/model/task_model.dart';

class TodoModel extends ChangeNotifier {
  List<TaskModel> taskList = [];

  addTaskInList() {
    TaskModel taskModel = TaskModel("title ${taskList.length}", "this is the task no detail ${taskList.length}");

    notifyListeners();
  }
}