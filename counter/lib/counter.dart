import 'dart:async';

import 'package:flutter/services.dart';

class Counter {
  static const MethodChannel _channel = const MethodChannel('counter');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<int> increment() async {
    return await _channel.invokeMethod('increment');
  }
}
