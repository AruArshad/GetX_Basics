import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nav/pages/second.dart';

class Home extends StatelessWidget {
  goToNext() {
    // Navigator.push(context, MaterialPageRoute(builder: (context) => Second())); //basic flutter nav
    // navigator.push(MaterialPageRoute(builder: (context) => Second())); //getx flutter nav
    Get.to(Second()); //getx nav
  }

  _showSnackBar() {
    Get.snackbar("GetX Snack title", "Body of GetX SnackBar",
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        maxWidth: 300,
        margin: EdgeInsets.all(10.0),
        backgroundColor: Colors.purpleAccent);
  }

  _showDialog() {
    Get.defaultDialog(
      title: "GetX Dialog",
      titleStyle: TextStyle(color: Colors.white),
      content: Text(
        "getX Content of Dialog",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }

  _showBottomSheet() {
    Get.bottomSheet(Container(
      height: 250,
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: Text(
            "GetX BottomSheet",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: Colors.purpleAccent,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GetX Navigation Home",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () => goToNext(),
              child: Text("Go to Second"),
            ),
            RaisedButton(
              onPressed: () => _showSnackBar(),
              child: Text("Snackbar"),
            ),
            RaisedButton(
              onPressed: () => _showDialog(),
              child: Text("Dialog"),
            ),
            RaisedButton(
              onPressed: () => _showBottomSheet(),
              child: Text("Bottom Sheet"),
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              onPressed: () {
                Get.toNamed("/second");
              },
              child: Text("Name Route: /second"),
            )
          ],
        ),
      ),
    );
  }
}
