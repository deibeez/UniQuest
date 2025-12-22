import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_new_task_widget.dart' show AddNewTaskWidget;
import 'package:flutter/material.dart';

class AddNewTaskModel extends FlutterFlowModel<AddNewTaskWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for taskname widget.
  FocusNode? tasknameFocusNode;
  TextEditingController? tasknameTextController;
  String? Function(BuildContext, String?)? tasknameTextControllerValidator;
  // State field(s) for tags widget.
  FocusNode? tagsFocusNode;
  TextEditingController? tagsTextController;
  String? Function(BuildContext, String?)? tagsTextControllerValidator;
  // State field(s) for priority widget.
  String? priorityValue;
  FormFieldController<String>? priorityValueController;
  // State field(s) for notes widget.
  FocusNode? notesFocusNode;
  TextEditingController? notesTextController;
  String? Function(BuildContext, String?)? notesTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tasknameFocusNode?.dispose();
    tasknameTextController?.dispose();

    tagsFocusNode?.dispose();
    tagsTextController?.dispose();

    notesFocusNode?.dispose();
    notesTextController?.dispose();
  }
}
