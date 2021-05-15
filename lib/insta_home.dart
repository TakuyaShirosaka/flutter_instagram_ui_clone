import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'insta_body.dart';

class InstaHome extends StatelessWidget {
  final topbar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    // 左側のアイコン
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35.0,
      child: Image.asset("assets/images/insta_logo.png"),
    ),
    // 右側のアイコン一覧
    actions: <Widget>[
      Padding(
        // 〇方向にのみ余白をもたせる
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topbar,
      body: new InstaBody(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(icon: Icon(Icons.home), onPressed: () {}),
              new IconButton(icon: Icon(Icons.search), onPressed: () {}),
              new IconButton(icon: Icon(Icons.add_box), onPressed: () {}),
              new IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
              new IconButton(icon: Icon(Icons.account_box), onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
