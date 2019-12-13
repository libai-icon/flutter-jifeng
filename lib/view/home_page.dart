import 'package:flutter/material.dart';
import 'package:jifeng/common/loins_color.dart';
import 'package:jifeng/common/loins_gaps.dart';
import 'package:jifeng/home/new_content_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  var _list = [
    {'title':'关于旅行的意义官方通告！即日起旅行的意义将正式上线了，这是一款绝对没有广告的App','image':'assets/images/home/icon1.png','fllow':1024,'star':21,'personIcon':'assets/images/home/star.png','name':'旅行的意义','time':'2019-12-06 15:01'},
    {'title':'关于旅行的意义官方通告！即日起旅行的意义将正式上线了，这是一款绝对没有广告的App','image':'assets/images/home/icon1.png','fllow':1024,'star':21,'personIcon':'assets/images/home/star.png','name':'旅行的意义','time':'2019-12-06 15:01'},
    {'title':'关于旅行的意义官方通告！即日起旅行的意义将正式上线了，这是一款绝对没有广告的App','image':'assets/images/home/icon1.png','fllow':1024,'star':21,'personIcon':'assets/images/home/star.png','name':'旅行的意义','time':'2019-12-06 15:01'},
    {'title':'关于旅行的意义官方通告！即日起旅行的意义将正式上线了，这是一款绝对没有广告的App','image':'assets/images/home/icon1.png','fllow':1024,'star':21,'personIcon':'assets/images/home/star.png','name':'旅行的意义','time':'2019-12-06 15:01'},
    {'title':'关于旅行的意义官方通告！即日起旅行的意义将正式上线了，这是一款绝对没有广告的App','image':'assets/images/home/icon1.png','fllow':1024,'star':21,'personIcon':'assets/images/home/star.png','name':'旅行的意义','time':'2019-12-06 15:01'},
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("旅行的意义",style: TextStyle(color: Colors.black),),
          centerTitle: false,
          elevation: 0,
          backgroundColor: LoinsColor.themeColors,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add,color: Colors.black,),
              onPressed: () {
                Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) =>
                          // new NewContentPage(todo: todos[index])
                          NewContentPage()
                          ));
              },
            ),
            
          ],
        ),
        body: Container(
          child: ListView(
            children:_buildListItem(),
          ),
        )  
    );
  }
  
  List<Widget> _buildListItem() {
    List<Widget> items = List<Widget>();
    _list.forEach((value) {
      items.add(containerItem(value));
    });
    return items;
  }
  Widget containerItem(value) {
    return Container(
      color:LoinsColor.loinsBgColor,
      padding: EdgeInsets.symmetric(horizontal: 9),
      margin: EdgeInsets.only(bottom: 12),
      child: Column(
        children: <Widget>[
          LoinsGaps.line,
          LoinsGaps.vGap10,
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(50.0),),
                      child: 
                        // _info['userPhoto'] != null &&
                        //         _info['userPhoto'] != ''
                        //     ? CachedNetworkImage(
                        //         imageUrl: '${_info['userPhoto']}',
                        //         fit: BoxFit.fill,
                        //         height: 48,
                        //         width: 48,
                        //       )
                        //     : 
                          Image.asset(
                              value['personIcon']??'',
                              height: 28,
                              width: 28,
                            ),
                    ),
                  ),
                  LoinsGaps.hGap8,
                  Text(value['name'],style:TextStyle(fontSize:14,fontWeight: FontWeight.bold))
                ],
              ),
              Container(
                child: Text('关注',style:TextStyle(fontSize:14,fontWeight: FontWeight.bold,color: Colors.redAccent)),
              ),
              
            ],
          ),
          LoinsGaps.vGap8,
          Container(
            child: Text(value['title'],style:TextStyle(fontSize:14,)),
          ),
          LoinsGaps.vGap8,
          Image.asset(value['image']??''),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 9,vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.star_border),
                Icon(Icons.dvr),
                Icon(Icons.open_in_new),
              ],
            ),
          ),
          LoinsGaps.line,
        ],
      ),
    );
  }
}