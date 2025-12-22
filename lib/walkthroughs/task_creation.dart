import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_bubble/walkthrough_bubble_widget.dart';

// Focus widget keys for this walkthrough
final columnJlvb4ic6 = GlobalKey();
final textFieldA491pn9x = GlobalKey();
final textFieldCxxde85t = GlobalKey();
final dropDownScrmvpes = GlobalKey();
final textFieldWse2qryo = GlobalKey();
final button5kff2q0m = GlobalKey();
final button75x9o5hu = GlobalKey();
final buttonKnzudieh = GlobalKey();

/// taskCreation
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: columnJlvb4ic6,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: const Color(0x0AFFFFFF),
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughBubbleWidget(
              text:
                  'This is the task creation page in where you can input your data about the task you are going to create',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textFieldA491pn9x,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: const Color(0x0AFFFFFF),
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughBubbleWidget(
              text: 'In this column you can write your task name',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textFieldCxxde85t,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: const Color(0x0AFFFFFF),
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughBubbleWidget(
              text: 'Right here you can input the tags',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: dropDownScrmvpes,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: const Color(0x0AFFFFFF),
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughBubbleWidget(
              text: 'In this column you can set your task priority',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textFieldWse2qryo,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: const Color(0x0AFFFFFF),
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughBubbleWidget(
              text: 'Here you can add your notes',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: button5kff2q0m,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: const Color(0x0AFFFFFF),
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughBubbleWidget(
              text: 'Cancel button to remove the task data',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: button75x9o5hu,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: const Color(0x0AFFFFFF),
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughBubbleWidget(
              text:
                  'Save task button to save your task and make it appear on the to do list page',
            ),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: buttonKnzudieh,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughBubbleWidget(
              text: 'That is all now get started and HAPPY QUESTING!!!',
            ),
          ),
        ],
      ),
    ];
