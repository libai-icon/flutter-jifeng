import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jifeng/common/loins_color.dart';
import 'package:jifeng/common/loins_gaps.dart';
import 'package:jifeng/home/new_content_page.dart';
import 'package:jifeng/utils/api_util.dart';
import 'package:jifeng/utils/http_util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _list = [];
  @override
  void initState() {
    _loadData();
    // TODO: implement initState
    super.initState();
  }

  _loadData() async {
    var response =
        await HttpUtil().get(Api.VIDEO_HOME_TAB, data: {'data':''});
    Map _data = json.decode(response.data.toString());
    if(_data['code'] == 200){
      setState(() {
        _list = _data['result']['itemList'];
      });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "旅行的意义",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: false,
          elevation: 0,
          backgroundColor: LoinsColor.themeColors,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>
                            // new NewContentPage(todo: todos[index])
                            NewContentPage()));
              },
            ),
          ],
        ),
        body: Container(
          child: ListView(
            children: _buildListItem(),
          ),
        ));
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
      color: LoinsColor.loinsBgColor,
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      child:
                          Image.network(
                        value['data']['icon'] ?? '',
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ),
                  LoinsGaps.hGap8,
                  Text(value['data']['title'],
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold))
                ],
              ),
              Container(
                child: Text('关注',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent)),
              ),
            ],
          ),
          LoinsGaps.vGap8,
          Container(
            child: Text(value['data']['description'],
                style: TextStyle(
                  fontSize: 14,
                )),
          ),
          LoinsGaps.vGap8,
          Image.network(value['data']['icon'] ?? ''),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 9, vertical: 12),
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
//    String nextPage = "https://api.apiopen.top/videoHomeTab";

//   ScrollController _scrollController = new ScrollController();

//   bool isLoading = false;

//   List names = new List();

//   final dio = new Dio();

//   void _getMoreData() async {
//     // if (!isLoading) {
//     //   setState(() {
//     //     isLoading = true;
//     //   });

//     //   final response = await dio.get(nextPage);

//     //   nextPage = response.data['next'];

//     //   setState(() {
//     //     isLoading = false;
//     //     names.addAll(response.data['results']);
//     //   });
//     // }
//   }

//   @override
//   void initState() {
//     // this._getMoreData();
//     super.initState();
//     // _scrollController.addListener(() {
//     //   if (_scrollController.position.pixels ==
//     //       _scrollController.position.maxScrollExtent) {
//     //     _getMoreData();
//     //   }
//     // });
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   Widget _buildProgressIndicator() {
//     return new Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: new Center(
//         child: new Opacity(
//           opacity: isLoading ? 1.0 : 00,
//           child: new CircularProgressIndicator(),
//         ),
//       ),
//     );
//   }

//   Widget _buildList() {
//     return ListView.builder(
// //+1 for progressbar
//       itemCount: names.length + 1,
//       itemBuilder: (BuildContext context, int index) {
//         if (index == names.length) {
//           return _buildProgressIndicator();
//         } else {
//           return new ListTile(
//             title: Text((names[index]['name'])),
//             onTap: () {
//               print(names[index]);
//             },
//           );
//         }
//       },
//       controller: _scrollController,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Pagination"),
//       ),
//       body: Container(
//         child: _buildList(),
//       ),
//       resizeToAvoidBottomPadding: false,
//     );
//   }
}
