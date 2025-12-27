import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieBurstOverlay extends StatefulWidget {
  const LottieBurstOverlay({
    super.key,
    required this.lottieAsset,
    this.size = 300.0,
    this.duration = const Duration(milliseconds: 2000),
    this.repeat = false,
  });

  final String lottieAsset;
  final double size;
  final Duration duration;
  final bool repeat;

  @override
  State<LottieBurstOverlay> createState() => _LottieBurstOverlayState();

  /// Show burst at specific coordinates
  static void showAtPosition({
    required BuildContext context,
    required Offset position,
    String lottieAsset = 'assets/jsons/Confetti.json',
    double size = 300.0,
  }) {
    final overlay = Overlay.of(context);
    late OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        left: position.dx - (size / 2),
        top: position.dy - (size / 2),
        child: IgnorePointer(
          child: LottieBurstOverlay(
            lottieAsset: lottieAsset,
            size: size,
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    // Auto-remove after animation completes
    Future.delayed(const Duration(milliseconds: 3000), () {
      overlayEntry.remove();
    });
  }

  /// Show burst at center of screen
  static void showCentered({
    required BuildContext context,
    String lottieAsset = 'assets/jsons/Confetti.json',
    double size = 400.0,
    bool repeat = false,
    Duration? duration,
  }) {
    final overlay = Overlay.of(context);
    late OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) => Center(
        child: IgnorePointer(
          child: LottieBurstOverlay(
            lottieAsset: lottieAsset,
            size: size,
            repeat: repeat,
            duration: duration ?? const Duration(milliseconds: 2000),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    // Auto-remove after animation completes
    Future.delayed(const Duration(milliseconds: 3000), () {
      overlayEntry.remove();
    });
  }

  /// Show fullscreen burst
  static void showFullscreen({
    required BuildContext context,
    String lottieAsset = 'assets/jsons/Confetti.json',
  }) {
    final overlay = Overlay.of(context);
    late OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) => Positioned.fill(
        child: IgnorePointer(
          child: Lottie.asset(
            lottieAsset,
            fit: BoxFit.cover,
            repeat: false,
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    // Auto-remove after animation completes
    Future.delayed(const Duration(milliseconds: 3000), () {
      overlayEntry.remove();
    });
  }
}

class _LottieBurstOverlayState extends State<LottieBurstOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Lottie.asset(
        widget.lottieAsset,
        controller: _controller,
        repeat: widget.repeat,
        fit: BoxFit.contain,
      ),
    );
  }
}
