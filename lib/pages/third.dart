import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Get.offAll(Home()),
          child: Text("Go to Home"),
        ),
      ),
    );
  }
}
