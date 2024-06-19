import 'package:docdoc/core/di/dependecy_injection.dart';
import 'package:docdoc/core/routing/app_router.dart';
import 'package:docdoc/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// dart run build_runner build
void main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(
    DocApp(
      appRouter: AppRouter(),

      
    ),
  );
}