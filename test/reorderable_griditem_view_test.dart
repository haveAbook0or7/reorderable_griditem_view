import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reorderable_griditem_view/reorderable_griditem_view.dart';

void main() {
  const MethodChannel channel = MethodChannel('reorderable_griditem_view');

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
    expect(await ReorderableGriditemView.platformVersion, '42');
  });
}
