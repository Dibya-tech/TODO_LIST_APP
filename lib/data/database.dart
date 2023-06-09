import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
  List todoList = [];

  // reference our box
  final _myBox = Hive.box('databox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    todoList = [
      ["Make Coffee", false],
      ["Go out for a walk", true],
    ];
  }

  // load the data from database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", todoList);
  }
}
