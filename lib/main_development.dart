import 'package:docdoc/core/di/dependecy_injection.dart';
import 'package:docdoc/core/helpers/constants.dart';
import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/helpers/shared_pref_helper.dart';
import 'package:docdoc/core/routing/app_router.dart';
import 'package:docdoc/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// dart run build_runner build
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await checkIfLoggedInUser();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(
    DocApp(
      appRouter: AppRouter(),      
    ),
  );
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPreConstants.userToken);
  if (!userToken.isNullOrEmpty()) {
    isloggedIn = true;
  } else {
    isloggedIn = false;
  }
}