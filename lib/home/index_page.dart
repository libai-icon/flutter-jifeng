// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jifeng/common/loins_color.dart';
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
      icon: Icon(Icons.home,color: LoinsColor.bottomNavigationBar,),
      title: Text('首页',style: TextStyle(color: LoinsColor.bottomNavigationBar),),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.star,color: LoinsColor.bottomNavigationBar,),
      title: Text('推荐',style: TextStyle(color: LoinsColor.bottomNavigationBar),),
    ),
    // BottomNavigationBarItem(
    //   icon: Icon(Icons.backup,color: LoinsColor.bottomNavigationBar,),
    //   title: Text('Back',style: TextStyle(color: LoinsColor.bottomNavigationBar),),
    // ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person,color: LoinsColor.bottomNavigationBar,),
      title: Text('我的',style: TextStyle(color: LoinsColor.bottomNavigationBar),),
    ),
  ];
  void onTabTapped(int index){
    setState((){
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
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