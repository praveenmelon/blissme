import 'package:blissme/common/constants/string_constants.dart';
import 'package:blissme/common/screenutil/screenutil.dart';
import 'package:blissme/presentation/journeys/home/home_screen.dart';
import 'package:blissme/presentation/themes/app_color.dart';
import 'package:blissme/presentation/themes/theme_text.dart';
import 'package:flutter/material.dart';

class BlissMeApp extends StatefulWidget {
  const BlissMeApp({Key? key}) : super(key: key);

  @override
  _BlissMeAppState createState() => _BlissMeAppState();
}

class _BlissMeAppState extends State<BlissMeApp> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringResources.appName,
      theme: ThemeData(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        primaryColor: AppColor.white,
        accentColor: AppColor.grey,
        backgroundColor: AppColor.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: ThemeText.getTextTheme(),
        appBarTheme: const AppBarTheme( brightness: Brightness.dark,elevation: 0,color: AppColor.white,),
      ),

      home: HomeScreen(),
    );
  }
}
