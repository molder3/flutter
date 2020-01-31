
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(DioTest());
class DioTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "DioTest",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Dio',),
    );
  }
}
class MyHomePage extends StatefulWidget{
  MyHomePage({Key key,this.title}):super(key:key);
  final String title;
  _DioTestState createState() => new _DioTestState();
}
class _DioTestState extends State<MyHomePage>{
  bool _loading = false;
  String _text = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text("获取"),
                padding: EdgeInsets.only(top: 0.0),
                onPressed: (){

                },
              ),
              Container(
                width: MediaQuery.of(context).size.width-50.0,
                child: Text(_text.replaceAll(new RegExp(r"\s"), "")),
              )
            ],
          ),
        ),
      ),
    );
  }
}