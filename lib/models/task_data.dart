import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskName: 'Buy milk'),
    Task(taskName: 'Buy milk'),
    Task(taskName: 'Buy milk'),
  ];

  int get itemCount {
    return _tasks.length;
  }

  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String taskTitle) {
    _tasks.add(Task(taskName: taskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
