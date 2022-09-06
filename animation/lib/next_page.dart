import 'package:animation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/parrot.jpg'),
            Text("BACK"),
            ElevatedButton(
              onPressed: () {
                print("BACK");
                Get.to(
                  Home(),
                  transition: Transition.leftToRightWithFade,
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