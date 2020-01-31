//app入口
import 'dart:convert';

import 'package:flutte/generated/json/imgb_entity_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutte/imgb_entity.dart';
import 'generated/json/base/json_convert_content.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //主题色
      theme: ThemeData(
        //设置为蓝色
          primarySwatch: Colors.blue),
      //这是一个Widget对象，用来定义当前应用打开的时候，所显示的界面
      home: BigPhotoWidget(),
    );
  }
}
class BigPhotoWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new _BigPhotoState();
  }
}
class _BigPhotoState extends State<BigPhotoWidget>{
  //具体的数据集合
  List list = new List();
  @override
  void initState(){
    super.initState();
    getData();
  }
     getData()  async{
    try{
   Response response;
  //等待返回response
  response = await Dio().get('http://172.17.8.100/movieApi/tool/v2/banner');
  if(response.statusCode == 200){
    var data =   response.data;
    var decode12= json.decode(data);
    var user= ImgbEntity().fromJson(decode12);
    user.result.length;
    for (var i = 0; i < user.result.length; i++) {
      list.add(user.result[i].imageUrl);
      print(user.result[i].imageUrl);
    }
   // print(response);
    print(user);
  }else{
  print("error");
  }
  }catch(e){
  print(e);

  }

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
      body: ListView.builder(itemCount: list.length,
          itemBuilder: (BuildContext context,int index){
            return Column(
               children: <Widget>[
                  photoWidget(list,index),
               ],
            );
          }
      ),
      );
  }


/*   getData() async{

    //请求服务器，等待响应
     Response response=await  Dio().get("http://172.17.8.100/movieApi/tool/v2/banner");
     //成功解析数据
     if(response.statusCode==200){
       Map userMap = json.decode(response.toString());

     }else{
       print("error");
     }*/
}

 photoWidget(List list, int index) {
}


