import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void logStartTest(String testName) {
  debugPrint('--- Start $testName 👀 ---');
}

void logEndTest(String testName) {
  debugPrint('--- End $testName ✔️ ---');
}

Future<void> testScreen(
  String testName,
  Future<void> Function() testFunction,
) async {
  logStartTest(testName);

  await testFunction.call();
  logEndTest(testName);
}
