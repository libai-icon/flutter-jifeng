import 'package:flutter/material.dart';
import 'package:jifeng/common/loins_color.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
          elevation: 0,
          backgroundColor: LoinsColor.themeColors,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: "Home",
              onPressed: () {
                print("Home");
              },
            ),
            
          ],
        ),
         body: Container(
           child: Text('data'),
         ),
       ),
    );
  }
}