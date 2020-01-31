import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutte/imgb_entity.dart';

void main() => runApp(MyHome());
List list = new List();
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new ListViewWidget(
        new List<String>.generate(6, (i) {
          return 'Item &i';
        }),
      ),
    );
  }
}

//ListView
class ListViewWidget extends StatelessWidget {
  final List<String> items;

  ListViewWidget(this.items);

  @override
  Widget build(BuildContext context) {
    dio_get();
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return new ListBody(

          children: <Widget>[photoWidget(ImgbEntity().result, index)],
        );
      },
    );
  }
}

//网络请求
dio_get() async {
  try {
    Response response;
    //等待返回response
    response = await Dio().get(
        "http://172.17.8.100/movieApi/tool/v2/banner");
    if (response.statusCode == 200) {
      var data = response.data;
      var decode12 = json.decode(data);
      var depart =  ImgbEntity().fromJson(decode12);

      depart.result.length;
      for (var i = 0; i < depart.result.length; i++) {
        list.add(depart.result[i].imageUrl);
        print(depart.result[i].imageUrl);
      }
    } else {
      print("error");
    }
  } catch (e) {
    print(e);
  }
}

Widget photoWidget(List<ImgbResult> resultLists, int index) {
  return Card(
    child: Container(
      width: 200,
      height: 300,
      child: Column(
        children: <Widget>[
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image.network(
                  list[index]
              ),
            ),
          ),
        ],
      ),

    ),
  );
}