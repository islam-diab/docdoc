import 'package:docdoc/core/di/dependecy_injection.dart';
import 'package:docdoc/core/routing/app_router.dart';
import 'package:docdoc/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
