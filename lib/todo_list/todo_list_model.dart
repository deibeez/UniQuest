import '/backend/supabase/supabase.dart';
import '/components/task_div/task_div_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'todo_list_widget.dart' show TodoListWidget;
import 'package:flutter/material.dart';

class TodoListModel extends FlutterFlowModel<TodoListWidget> {
  ///  Local state fields for this page.

  List<TasksRow> tasksName = [];
  void addToTasksName(TasksRow item) => tasksName.add(item);
  void removeFromTasksName(TasksRow item) => tasksName.remove(item);
  void removeAtIndexFromTasksName(int index) => tasksName.removeAt(index);
  void insertAtIndexInTasksName(int index, TasksRow item) =>
      tasksName.insert(index, item);
  void updateTasksNameAtIndex(int index, Function(TasksRow) updateFn) =>
      tasksName[index] = updateFn(tasksName[index]);

  List<TasksRow> searchedTasks = [];
  void addToSearchedTasks(TasksRow item) => searchedTasks.add(item);
  void removeFromSearchedTasks(TasksRow item) => searchedTasks.remove(item);
  void removeAtIndexFromSearchedTasks(int index) =>
      searchedTasks.removeAt(index);
  void insertAtIndexInSearchedTasks(int index, TasksRow item) =>
      searchedTasks.insert(index, item);
  void updateSearchedTasksAtIndex(int index, Function(TasksRow) updateFn) =>
      searchedTasks[index] = updateFn(searchedTasks[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in todoList widget.
  List<TasksRow>? allTasks;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for taskDiv dynamic component.
  late FlutterFlowDynamicModels<TaskDivModel> taskDivModels1;
  // Models for taskDiv dynamic component.
  late FlutterFlowDynamicModels<TaskDivModel> taskDivModels2;
  // Models for taskDiv dynamic component.
  late FlutterFlowDynamicModels<TaskDivModel> taskDivModels3;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    taskDivModels1 = FlutterFlowDynamicModels(() => TaskDivModel());
    taskDivModels2 = FlutterFlowDynamicModels(() => TaskDivModel());
    taskDivModels3 = FlutterFlowDynamicModels(() => TaskDivModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    taskDivModels1.dispose();
    taskDivModels2.dispose();
    taskDivModels3.dispose();
  }
}
