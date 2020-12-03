import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Fourth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fourth"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          RaisedButton(
            onPressed: () {
              Get.back(result: "hello");
            },
            child: Text("Return Text 'hello'"),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {
              Get.back(result: "world");
            },
            child: Text("Return Text 'world'"),
          ),
          SizedBox(
            height: 20,
          ),
          (Get.arguments != null) ? Text(Get.arguments) : Text("No data"),
        ],
      )),
    );
  }
}
