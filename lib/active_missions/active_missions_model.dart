import '/components/mission_div/mission_div_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'active_missions_widget.dart' show ActiveMissionsWidget;
import 'package:flutter/material.dart';

class ActiveMissionsModel extends FlutterFlowModel<ActiveMissionsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for missionDiv dynamic component.
  late FlutterFlowDynamicModels<MissionDivModel> missionDivModels;

  @override
  void initState(BuildContext context) {
    missionDivModels = FlutterFlowDynamicModels(() => MissionDivModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    missionDivModels.dispose();
  }
}
