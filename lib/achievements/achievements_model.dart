import '/components/achievements_div/achievements_div_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'achievements_widget.dart' show AchievementsWidget;
import 'package:flutter/material.dart';

class AchievementsModel extends FlutterFlowModel<AchievementsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for achievementsDiv dynamic component.
  late FlutterFlowDynamicModels<AchievementsDivModel> achievementsDivModels1;
  // Models for achievementsDiv dynamic component.
  late FlutterFlowDynamicModels<AchievementsDivModel> achievementsDivModels2;

  @override
  void initState(BuildContext context) {
    achievementsDivModels1 =
        FlutterFlowDynamicModels(() => AchievementsDivModel());
    achievementsDivModels2 =
        FlutterFlowDynamicModels(() => AchievementsDivModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    achievementsDivModels1.dispose();
    achievementsDivModels2.dispose();
  }
}
