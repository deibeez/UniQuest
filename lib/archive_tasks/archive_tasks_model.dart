import '/components/archive_task_div/archive_task_div_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'archive_tasks_widget.dart' show ArchiveTasksWidget;
import 'package:flutter/material.dart';

class ArchiveTasksModel extends FlutterFlowModel<ArchiveTasksWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for archiveTaskDiv dynamic component.
  late FlutterFlowDynamicModels<ArchiveTaskDivModel> archiveTaskDivModels;

  @override
  void initState(BuildContext context) {
    archiveTaskDivModels =
        FlutterFlowDynamicModels(() => ArchiveTaskDivModel());
  }

  @override
  void dispose() {
    archiveTaskDivModels.dispose();
  }
}
