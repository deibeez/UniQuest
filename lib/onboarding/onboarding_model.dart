import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:flutter/material.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for UnameInput widget.
  FocusNode? unameInputFocusNode1;
  TextEditingController? unameInputTextController1;
  String? Function(BuildContext, String?)? unameInputTextController1Validator;
  // State field(s) for UnameInput widget.
  FocusNode? unameInputFocusNode2;
  TextEditingController? unameInputTextController2;
  String? Function(BuildContext, String?)? unameInputTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unameInputFocusNode1?.dispose();
    unameInputTextController1?.dispose();

    unameInputFocusNode2?.dispose();
    unameInputTextController2?.dispose();
  }
}
