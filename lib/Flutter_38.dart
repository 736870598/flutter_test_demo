//https://blog.csdn.net/hekaiyou/article/details/76533014

import 'package:flutter/material.dart';


class MyStyle extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyStylePage();
  }
}

class _MyStylePage extends State<MyStyle>{

  Widget _colorDisplayBox(String explanation, String name, Color color){
    return new Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Text("$explanation\n$name\t\t"),
            new Flexible(
                child: new Container(height: 30, decoration: new BoxDecoration(color: color),))
          ],
        ),
        new Divider()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("自定义风格"),),
      body: new Center(
        child: new ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            _colorDisplayBox("提示颜色", "hintColor", Theme.of(context).hintColor),
            _colorDisplayBox("文本选择手柄颜色", "textSelectionHandleColor", Theme.of(context).textSelectionHandleColor),
            _colorDisplayBox("文字选择颜色", "textSelectionColor", Theme.of(context).textSelectionColor),
            _colorDisplayBox("背景颜色", "backgroundColor", Theme.of(context).backgroundColor),
            _colorDisplayBox("强调颜色", "accentColor", Theme.of(context).accentColor),
            _colorDisplayBox("画布颜色", "canvasColor", Theme.of(context).canvasColor),
            _colorDisplayBox("卡片颜色", "cardColor", Theme.of(context).cardColor),
            _colorDisplayBox("按钮颜色", "buttonColor", Theme.of(context).buttonColor),
            _colorDisplayBox("对话框背景颜色", "dialogBackgroundColor", Theme.of(context).dialogBackgroundColor),
            _colorDisplayBox("禁用颜色", "disabledColor", Theme.of(context).disabledColor),
            _colorDisplayBox("分频器颜色", "dividerColor", Theme.of(context).dividerColor),
            _colorDisplayBox("错误颜色", "errorColor", Theme.of(context).errorColor),
            _colorDisplayBox("指示灯颜色", "indicatorColor", Theme.of(context).indicatorColor),
            _colorDisplayBox("原色", "primaryColor", Theme.of(context).primaryColor),
            _colorDisplayBox("脚手架背景颜色", "scaffoldBackgroundColor", Theme.of(context).scaffoldBackgroundColor),
            _colorDisplayBox("次标头颜色", "secondaryHeaderColor", Theme.of(context).secondaryHeaderColor),
            _colorDisplayBox("选择行颜色", "selectedRowColor", Theme.of(context).selectedRowColor),
            _colorDisplayBox("飞溅颜色", "splashColor", Theme.of(context).splashColor),
            _colorDisplayBox("未选择的控件颜色", "unselectedWidgetColor", Theme.of(context).unselectedWidgetColor),
          ],
        ),
      ),
    );
  }

}