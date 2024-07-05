import 'package:feedis/auth/auth.dart';
import 'package:feedis/page/home.dart';
import 'package:feedis/page/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: ScreenUtilInit(designSize: Size(315, 812), child: AuthPage()),
      home: HomePage(),
    );
  }
}
