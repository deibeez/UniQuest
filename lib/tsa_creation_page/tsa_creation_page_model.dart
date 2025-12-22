import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'tsa_creation_page_widget.dart' show TsaCreationPageWidget;
import 'package:flutter/material.dart';

class TsaCreationPageModel extends FlutterFlowModel<TsaCreationPageWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? taskCreationController;
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    taskCreationController?.finish();
    tasknameFocusNode?.dispose();
    tasknameTextController?.dispose();

    tagsFocusNode?.dispose();
    tagsTextController?.dispose();

    notesFocusNode?.dispose();
    notesTextController?.dispose();
  }
}
