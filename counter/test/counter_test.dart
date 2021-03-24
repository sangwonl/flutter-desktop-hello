import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:counter/counter.dart';

void main() {
  const MethodChannel channel = MethodChannel('counter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Counter.platformVersion, '42');
  });
}
