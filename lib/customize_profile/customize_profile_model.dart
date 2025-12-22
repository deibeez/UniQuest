import '/components/avatar/avatar_widget.dart';
import '/components/background/background_widget.dart';
import '/components/frame/frame_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'customize_profile_widget.dart' show CustomizeProfileWidget;
import 'package:flutter/material.dart';

class CustomizeProfileModel extends FlutterFlowModel<CustomizeProfileWidget> {
  ///  Local state fields for this page.

  String selectedTab = '\"All\"';

  String taskPriority = '\"High\"';

  bool isCompleted = true;

  String selectedItem = 'public_url';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for avatar dynamic component.
  late FlutterFlowDynamicModels<AvatarModel> avatarModels;
  // Models for frame dynamic component.
  late FlutterFlowDynamicModels<FrameModel> frameModels;
  // Models for background dynamic component.
  late FlutterFlowDynamicModels<BackgroundModel> backgroundModels;

  @override
  void initState(BuildContext context) {
    avatarModels = FlutterFlowDynamicModels(() => AvatarModel());
    frameModels = FlutterFlowDynamicModels(() => FrameModel());
    backgroundModels = FlutterFlowDynamicModels(() => BackgroundModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    avatarModels.dispose();
    frameModels.dispose();
    backgroundModels.dispose();
  }
}
