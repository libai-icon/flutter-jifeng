import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
  @override
  Widget build(BuildContext context){
    return Container(
          color: Colors.white,
          child: Image.network('http://img.zcool.cn/community/01a99d5542ea730000019ae9cf7739.jpg@1280w_1l_2o_100sh.png',fit: BoxFit.cover,),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countDown();
  }
  void countDown(){
    var _duration = Duration(seconds: 4);
    Future.delayed(_duration,_indexPage);
  }
  void _indexPage(){
    Navigator.of(context).pushReplacementNamed('/IndexPage');
  }
}
