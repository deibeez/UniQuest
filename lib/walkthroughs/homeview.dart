import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_bubble/walkthrough_bubble_widget.dart';

// Focus widget keys for this walkthrough
final column8vwm56r1 = GlobalKey();

/// Homeview
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: column8vwm56r1,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: const Color(0x0AFFFFFF),
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughBubbleWidget(
              text: 'This is Container will bring you to the to do list page',
            ),
          ),
        ],
      ),
    ];
