import '/components/leader_div/leader_div_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'leaderboard_widget.dart' show LeaderboardWidget;
import 'package:flutter/material.dart';

class LeaderboardModel extends FlutterFlowModel<LeaderboardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for leaderDiv dynamic component.
  late FlutterFlowDynamicModels<LeaderDivModel> leaderDivModels1;
  // Models for leaderDiv dynamic component.
  late FlutterFlowDynamicModels<LeaderDivModel> leaderDivModels2;
  // Models for leaderDiv dynamic component.
  late FlutterFlowDynamicModels<LeaderDivModel> leaderDivModels3;
  // Models for leaderDiv dynamic component.
  late FlutterFlowDynamicModels<LeaderDivModel> leaderDivModels4;
  // Models for leaderDiv dynamic component.
  late FlutterFlowDynamicModels<LeaderDivModel> leaderDivModels5;

  @override
  void initState(BuildContext context) {
    leaderDivModels1 = FlutterFlowDynamicModels(() => LeaderDivModel());
    leaderDivModels2 = FlutterFlowDynamicModels(() => LeaderDivModel());
    leaderDivModels3 = FlutterFlowDynamicModels(() => LeaderDivModel());
    leaderDivModels4 = FlutterFlowDynamicModels(() => LeaderDivModel());
    leaderDivModels5 = FlutterFlowDynamicModels(() => LeaderDivModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    leaderDivModels1.dispose();
    leaderDivModels2.dispose();
    leaderDivModels3.dispose();
    leaderDivModels4.dispose();
    leaderDivModels5.dispose();
  }
}
