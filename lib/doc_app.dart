import 'package:docdoc/core/helpers/constants.dart';
import 'package:docdoc/core/routing/app_router.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        theme: ThemeData(
            primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
        onGenerateRoute: appRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: isloggedIn ? Routes.homeScreen : Routes.loginScreen,
      ),
    );
  }
}
