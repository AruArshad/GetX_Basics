import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nav/pages/third.dart';

import 'fourth.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  String dataFromFourth = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Sreeen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () => Get.off(Third()),
              child: Text("Go to Third and remove this screen from stack"),
            ),
            RaisedButton(
              onPressed: () => Get.offAll(Third()),
              child: Text("Go to Third and remove everything from stack"),
            ),
            SizedBox(
              height: 100,
            ),
            Text("Data from Sourth screen: $dataFromFourth"),
            RaisedButton(
              onPressed: () async {
                dataFromFourth = await Get.to(Fourth());
                setState(() {});
              },
              child: Text("Return data from Fourths screen"),
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              onPressed: () {
                Get.toNamed("/fourth", arguments: "Passed from Second");
              },
              child: Text("Go to named /fourth with parameter"),
            )
          ],
        ),
      ),
    );
  }
}
