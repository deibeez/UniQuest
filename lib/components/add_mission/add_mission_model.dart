import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_mission_widget.dart' show AddMissionWidget;
import 'package:flutter/material.dart';

class AddMissionModel extends FlutterFlowModel<AddMissionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for notes widget.
  FocusNode? notesFocusNode;
  TextEditingController? notesTextController;
  String? Function(BuildContext, String?)? notesTextControllerValidator;
  // State field(s) for xp widget.
  FocusNode? xpFocusNode;
  TextEditingController? xpTextController;
  String? Function(BuildContext, String?)? xpTextControllerValidator;
  // State field(s) for targetValue widget.
  FocusNode? targetValueFocusNode;
  TextEditingController? targetValueTextController;
  String? Function(BuildContext, String?)? targetValueTextControllerValidator;
  // State field(s) for trigger widget.
  String? triggerValue;
  FormFieldController<String>? triggerValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    notesFocusNode?.dispose();
    notesTextController?.dispose();

    xpFocusNode?.dispose();
    xpTextController?.dispose();

    targetValueFocusNode?.dispose();
    targetValueTextController?.dispose();
  }
}
