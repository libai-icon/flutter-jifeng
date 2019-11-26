import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jifeng/view/about_page.dart';
import 'package:jifeng/view/back_page.dart';
import 'package:jifeng/view/home_page.dart';
import 'package:jifeng/view/work_page.dart';
import 'package:flutter/widgets.dart';
class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}
class _IndexPageState extends State<IndexPage>{
  int _currentIndex = 0;
  final List<Widget> _children = [HomePage(), WorkPage(), BackPage(), AboutPage()];

  final List<BottomNavigationBarItem> _list = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home,color: Color(0XFFF36926),),
      title: Text('Index',style: TextStyle(color: Color(0XFFF36926)),),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.work,color: Color(0XFFF36926),),
      title: Text('Work',style: TextStyle(color: Color(0XFFF36926)),),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.backup,color: Color(0XFFF36926),),
      title: Text('Back',style: TextStyle(color: Color(0XFFF36926)),),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person,color: Color(0XFFF36926),),
      title: Text('About',style: TextStyle(color: Color(0XFFF36926)),),
    ),
  ];
  void onTabTapped(int index){
    setState((){
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: _list,
      ),
      body: _children[_currentIndex],
    );
  }

}