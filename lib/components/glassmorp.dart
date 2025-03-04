import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  const GlassMorphism({
    Key? key,
    required this.child,
    required this.blur,
    required this.opacity,
    required this.color,
    this.borderRadius,
  }) : super(key: key);
  final Widget child;
  final double blur;
  final double opacity;
  final Color color;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          decoration: BoxDecoration(
            color: color.withValues(alpha: opacity),
            borderRadius: borderRadius,
          ),
          child: child,
        ),
      ),
    );
  }
}
