import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/my_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/my_colors.dart';
import 'core/theming/my_light_theme.dart';

class DocDocApp extends StatelessWidget {

  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: MyColors.myWhite,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: MyRouter.generateRoute,
        theme: myLightTheme(),
      ),
    );
  }
}
