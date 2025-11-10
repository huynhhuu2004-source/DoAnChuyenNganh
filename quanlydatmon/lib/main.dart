import 'package:flutter/material.dart';
import 'package:quanlydatmon/views/center_page.dart';
import 'package:quanlydatmon/views/login_Page.dart';

 enum AppPaths{
    login,
    center,
 }

 extension AppPathsExtension on AppPaths{
  String get path{
      switch(this){
        case AppPaths.login: return '/login_Page';
        case AppPaths.center: return '/center_Page';
      }
  }
 }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppPaths.login.path: (context) => form(),
        AppPaths.center.path:(context) =>CenterPage(),
      },
      home: form(),
    );
  }
}
