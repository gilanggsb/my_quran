import 'package:flutter/material.dart';
import '../common.dart';

class GradientText extends StatelessWidget {
  const GradientText(this.text, {super.key, required this.gradient, this.style});

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback:
          (bounds) => gradient.createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: DefaultText(text, style: style),
    );
  }
}
