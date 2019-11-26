import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jifeng/splash/splash_screen.dart';

import 'home/index_page.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'loins',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: SplashScreen(),
      routes: <String,WidgetBuilder>{
        '/IndexPage':(context) => IndexPage()
      },
    );
  }
}