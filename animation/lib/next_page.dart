import 'package:animation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {

  double imgWidth = 100;
  double imgheight = 100;


  void animateImg(){
    setState(() {
      imgWidth = 400;
      imgheight = 400;
      print("Animate");
    });
  }

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
            AnimatedContainer(
              width: imgWidth,
              height: imgheight,
              // color: Colors.blue,
              duration: const Duration(seconds: 2),
              curve: Curves.bounceOut,
              child: Image.asset('assets/images/parrot.jpg'),
              // child: Text("TEXT"),
            ),
            ElevatedButton(
              onPressed: animateImg,
              child: Text("Animate"),
            )
          ],
        ),
      ),
    );
  }
}
