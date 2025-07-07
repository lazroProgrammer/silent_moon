import 'package:flutter/services.dart';

class SvgCache {
  static final Map<String, String> _cache = {};

  static Future<void> preload(String assetName) async {
    if (!_cache.containsKey(assetName)) {
      String svgString = await rootBundle.loadString(assetName);
      _cache[assetName] = svgString;
    }
  }

  static String? get(String assetName) => _cache[assetName];
}
