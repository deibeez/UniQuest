import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_bubble/walkthrough_bubble_widget.dart';

// Focus widget keys for this walkthrough
final iconUfjtf4iv = GlobalKey();
final listViewYnsz8c25 = GlobalKey();

/// todolist view
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: iconUfjtf4iv,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughBubbleWidget(
              text:
                  'This icon button will lead you to the task creation page!!!',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: listViewYnsz8c25,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughBubbleWidget(
              text: 'In this page you wil see the created tasks',
            ),
          ),
        ],
      ),
    ];
