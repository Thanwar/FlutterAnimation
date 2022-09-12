import 'package:animation/next_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HOME"),
            ElevatedButton(
              onPressed: () {
                print("Next");
                Get.to(
                  NextPage(testText: "TEST123"),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(seconds: 1),
                );
              },
              child: Text("NEXT"),
            )
          ],
        ),
      ),
    );
  }
}
