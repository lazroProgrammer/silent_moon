import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:silent_moon/core/svg_caching.dart';

class SvgWidget extends StatelessWidget {
  const SvgWidget({super.key, required this.svgPath});

  final String svgPath;

  @override
  Widget build(BuildContext context) {
    String? svgData = SvgCache.get(svgPath);
    if (svgData == null) {
      return SvgPicture.asset(svgPath); // or a loader
    }
    return SvgPicture.string(svgData);
  }
}
