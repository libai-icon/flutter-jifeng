import 'package:flutter/material.dart';
import 'package:jifeng/common/image_util.dart';
import 'package:jifeng/common/loins_color.dart';
import 'package:jifeng/common/loins_gaps.dart';
import 'package:jifeng/common/screen_util.dart';

class WorkPage extends StatefulWidget {
  @override
  _WorkPageState createState() => _WorkPageState();
}
class _WorkPageState extends State<WorkPage>{
  var _titles = [
    {'star':9.1,'image':'assets/images/home/icon1.png','city':'上海','sum':19,'follow':208},
    {'star':9.0,'image':'assets/images/home/icon2.png','city':'杭州','sum':89,'follow':980},
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title: new Text('我可以陪你去看星星',style: TextStyle(color: Colors.black),),
          elevation: 0,
          backgroundColor: LoinsColor.themeColors,
          centerTitle: false,
        ),
        body: Container(
              child: ListView(
                children: <Widget>[
                  Container(
                    width: ScreenUtil.screenWidth,
                    color: LoinsColor.themeColors,
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(9, 9, 0, 9),
                          width: (ScreenUtil.screenWidth - 36) / 3,
                          height: (ScreenUtil.screenWidth - 36)/4,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: new Border.all(width: 1.0, color: Color(0XFFDBEFFF)),
                            borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                            image: DecorationImage(
                              image: ImageUtil.getAssetImage('home/icon2'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Text('国内',style: TextStyle(color: Colors.white,fontSize: 18),),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(9, 9, 0, 9),
                          width: (ScreenUtil.screenWidth - 36) / 3,
                          height: (ScreenUtil.screenWidth - 36)/4,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: new Border.all(width: 1.0, color: Color(0XFFDBEFFF)),
                            borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                            image: DecorationImage(
                              image: ImageUtil.getAssetImage('home/icon1'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Text('国外',style: TextStyle(color: Colors.white,fontSize: 18),),
                        ),Container(
                          margin: EdgeInsets.fromLTRB(9, 9, 9, 9),
                          width: (ScreenUtil.screenWidth - 36) / 3,
                          height: (ScreenUtil.screenWidth - 36)/4,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: new Border.all(width: 1.0, color: Color(0XFFDBEFFF)),
                            borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                            image: DecorationImage(
                              image: ImageUtil.getAssetImage('home/icon1'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Text('周边',style: TextStyle(color: Colors.white,fontSize: 18),),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 9,vertical: 9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('最受欢迎的旅游景点',style:TextStyle(fontSize:14,fontWeight: FontWeight.bold)),
                              Text('查看更多',style:TextStyle(fontSize:14,color: Colors.blue)),
                            ],
                          ),
                        ),
                        Column(
                          children: buildItems(),
                        )
                      ],
                    ),
                  )
                ],
              ),
        ),
    );
  }
  List<Widget> buildItems() {
    List<Widget> items = List<Widget>();
    _titles.forEach((value) {
      items.add(containerItem(value));
    });
    return items;
  }

  Widget containerItem(value) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9,vertical: 16),
      child: Stack(
        children: <Widget>[
          Image.asset(value['image'],width: ScreenUtil.screenWidth),
          Positioned(
            right: 10,
            top: 10,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: new Border.all(width: 0.0, color: Colors.black12),
                color: Colors.black12,
                borderRadius: new BorderRadius.all(new Radius.circular(25.0)),
              ),
              child: Text(value['star'].toString(),style: TextStyle(fontSize:14,color:Colors.white),),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            child: Container(
              padding: EdgeInsets.all(12),
              alignment: Alignment.centerLeft,
              width: ScreenUtil.screenWidth / 2,
              color: Colors.white70,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(value['city'],style: TextStyle(fontSize: 16),),
                    LoinsGaps.vGap8,
                    LoinsGaps.line,
                    LoinsGaps.vGap8,
                    Text('${value['sum']}家酒店',style: TextStyle(fontSize: 12,color: Colors.black54),),
                    Text('${value['follow']}人关注了这个景点',style: TextStyle(fontSize: 12,color: Colors.black54),),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}