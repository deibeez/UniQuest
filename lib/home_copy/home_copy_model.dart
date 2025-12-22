import '/components/mission/mission_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_copy_widget.dart' show HomeCopyWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class HomeCopyModel extends FlutterFlowModel<HomeCopyWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? homeviewController;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for mission dynamic component.
  late FlutterFlowDynamicModels<MissionModel> missionModels;

  @override
  void initState(BuildContext context) {
    missionModels = FlutterFlowDynamicModels(() => MissionModel());
  }

  @override
  void dispose() {
    homeviewController?.finish();
    tabBarController?.dispose();
    missionModels.dispose();
  }
}
