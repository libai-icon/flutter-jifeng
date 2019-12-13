import 'package:flutter/material.dart';
import 'package:jifeng/common/loins_color.dart';
import 'package:jifeng/common/loins_style.dart';

class NewContentPage extends StatefulWidget {
  NewContentPage({Key key}) : super(key: key);

  @override
  _NewContentPageState createState() => _NewContentPageState();
}

class _NewContentPageState extends State<NewContentPage> {

  TextEditingController _decController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
          title: Text("新增我的旅行",style: TextStyle(color: Colors.black),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: () {
                Navigator.pop(context);
            },
          ),
          centerTitle: false,
          elevation: 0,
          backgroundColor: LoinsColor.themeColors,
        ),
        body: Container(
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    color: Colors.white,
                      border: Border.all(color: Color(0xFFEEEEEE), width: 0.5),
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  child: TextField(
                      maxLines: 5,
                      maxLength: 300,
                      textInputAction: TextInputAction.done,
                      controller: _decController,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          hintText: '请输入',
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          hintStyle: LoinsStyle.textGray12)),
                ),
              ],
            ),
        ),
      ),
    );
  }
}