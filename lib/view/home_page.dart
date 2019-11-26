import 'package:flutter/material.dart';
import 'package:jifeng/home/widget/icon_menu_widget.dart';
import 'package:jifeng/widget/my_appbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title: new Text('loins'),
          leading: new Icon(Icons.menu),
          backgroundColor: Color(0XFFF36926),
          centerTitle: true,
          actions: <Widget>[
            // 非隐藏的菜单
            new IconButton(
                icon: new Icon(Icons.message),
                tooltip: 'Add Alarm',
                onPressed: () {}
            ),
            // 隐藏的菜单

          ],
        ),
        body: Container(
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Image.asset('assets/images/home/banner.jpg',fit: BoxFit.fill,),
                  ),
                  IconMenuWidget(),
                ],
              ),
        ),
    );
  }
}